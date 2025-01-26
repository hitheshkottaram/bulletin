import 'package:bullet_in/core/resources/data_state.dart';
import 'package:bullet_in/features/home/domain/usecases/get_news_article.dart';
import 'package:bullet_in/features/home/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:bullet_in/features/home/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteArticleBloc extends Bloc<RemoteArticleEvent, RemoteArticleState> {
  final GetNewsArticleUsecase _getNewsArticleUsecase;

  RemoteArticleBloc(this._getNewsArticleUsecase)
      : super(const RemoteArticleLoading()) {
    on<GetArticles>(onGetArticles);
  }

  void onGetArticles(
      GetArticles event, Emitter<RemoteArticleState> emitter) async {
    final dataState = await _getNewsArticleUsecase();
    if (dataState is DataSuccess && (dataState.data?.isNotEmpty ?? false)) {
      emitter(RemoteArticleDone(dataState.data!));
    } else {
      emitter(RemoteArticleError(dataState.error!));
    }
  }
}

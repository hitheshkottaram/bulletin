import 'package:bullet_in/features/home/domain/entity/news_article_entity.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class RemoteArticleState extends Equatable {
  final List<NewsArticleEntity>? article;
  final DioException? error;
  const RemoteArticleState({this.article, this.error});

  @override
  List<Object> get props => [article!, error!];
}

class RemoteArticleLoading extends RemoteArticleState {
  const RemoteArticleLoading();
}

class RemoteArticleDone extends RemoteArticleState {
  const RemoteArticleDone(List<NewsArticleEntity> article)
      : super(article: article);
}

class RemoteArticleError extends RemoteArticleState {
  const RemoteArticleError(DioException error) : super(error: error);
}

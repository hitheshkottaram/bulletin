import 'package:bullet_in/features/home/data/data_source/remote/news_mock_api_service.dart';
import 'package:bullet_in/features/home/data/data_source/remote/news_api_service.dart';
import 'package:bullet_in/features/home/data/repository/news_article_repository_impl.dart';
import 'package:bullet_in/features/home/domain/repository/news_article_repository.dart';
import 'package:bullet_in/features/home/domain/usecases/get_news_article.dart';
import 'package:bullet_in/features/home/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:bullet_in/features/home/presentation/bloc/ui/home_ui_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Dio
  sl.registerSingleton<Dio>(Dio());

  //Dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));
  sl.registerSingleton<NewsMockApiService>(NewsMockApiService(sl()));
  sl.registerSingleton<NewsArticleRepository>(
      NewsArticleRepositoryImpl(sl(), sl()));

  //usecase
  sl.registerSingleton<GetNewsArticleUsecase>(GetNewsArticleUsecase(sl()));

  //Bloc
  sl.registerFactory<RemoteArticleBloc>(() => RemoteArticleBloc(sl()));
  sl.registerSingleton<HomeUIBloc>(HomeUIBloc());
}

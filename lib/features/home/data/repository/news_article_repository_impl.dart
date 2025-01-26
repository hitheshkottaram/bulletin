import 'package:bullet_in/core/resources/data_state.dart';
import 'package:bullet_in/core/resources/extensions.dart';
import 'package:bullet_in/features/home/data/data_source/remote/news_api_service.dart';
import 'package:bullet_in/features/home/data/data_source/remote/news_mock_api_service.dart';
import 'package:bullet_in/features/home/domain/entity/news_article_entity.dart';
import 'package:bullet_in/features/home/domain/repository/news_article_repository.dart';
import 'package:bullet_in/core/constants/constants.dart';
import 'package:dio/dio.dart';

class NewsArticleRepositoryImpl implements NewsArticleRepository {
  final NewsApiService _newsApiService;
  final NewsMockApiService _newsMockApiService;
  NewsArticleRepositoryImpl(this._newsApiService, this._newsMockApiService);
  @override
  Future<DataState<List<NewsArticleEntity>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsMockApiService.getNewsArticles();
      if (true) {
        _newsApiService.getNewsArticles(
          apiKey: newsAPIKey,
          country: newsAPICountryQuery,
          category: newsAPICategoryQuery,
        );
      }
      if (httpResponse.response.isSuccess &&
          (httpResponse.data.articles?.isNotEmpty ?? false)) {
        return DataSuccess(httpResponse.data.articles!);
      } else {
        return DataError(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataError(e);
    }
  }
}

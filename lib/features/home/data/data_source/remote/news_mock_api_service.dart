import 'package:bullet_in/core/constants/constants.dart';
import 'package:bullet_in/features/home/data/model/news_article_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'news_mock_api_service.g.dart';

@RestApi(baseUrl: mockBaseUrl)
abstract class NewsMockApiService {
  factory NewsMockApiService(Dio dio) = _NewsMockApiService;

  @GET('/3ba9f55a-6b89-44c0-9b0d-dd849c1eaf2c')
  Future<HttpResponse<NewsArticleApiResponse>> getNewsArticles();
}

import 'package:bullet_in/core/resources/data_state.dart';
import 'package:bullet_in/features/home/domain/entity/news_article_entity.dart';

abstract class NewsArticleRepository {
  Future<DataState<List<NewsArticleEntity>>> getNewsArticles();
}

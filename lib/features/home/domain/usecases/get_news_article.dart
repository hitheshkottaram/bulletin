import 'package:bullet_in/core/resources/data_state.dart';
import 'package:bullet_in/core/usecase/usecase.dart';
import 'package:bullet_in/features/home/domain/entity/news_article_entity.dart';
import 'package:bullet_in/features/home/domain/repository/news_article_repository.dart';

class GetNewsArticleUsecase
    implements UseCase<DataState<List<NewsArticleEntity>>, void> {
  final NewsArticleRepository _newsArticleRepository;
  GetNewsArticleUsecase(this._newsArticleRepository);

  @override
  Future<DataState<List<NewsArticleEntity>>> call({void params}) {
    return _newsArticleRepository.getNewsArticles();
  }
}

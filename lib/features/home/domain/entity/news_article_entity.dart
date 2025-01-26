import 'package:bullet_in/features/home/data/model/news_article_model.dart';
import 'package:equatable/equatable.dart';

class NewsArticleEntity extends Equatable {
  final Source? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final DateTime? publishedAt;
  final String? content;

  const NewsArticleEntity({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  @override
  List<Object?> get props => [
        source,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content
      ];
}

class Source extends Equatable {
  final String? id;
  final String? name;

  const Source({
    this.id,
    this.name,
  });

  @override
  List<Object?> get props => [id, name];
}

NewsArticleEntity mapArticleModelToEntity(NewsArticleModel model) {
  return NewsArticleEntity(
    source: model.source,
    author: model.author ?? '',
    title: model.title ?? '',
    description: model.description ?? '',
    url: model.url ?? '',
    urlToImage: model.urlToImage ?? '',
    publishedAt: model.publishedAt,
    content: model.content ?? '',
  );
}

List<NewsArticleEntity> convertToEntities(List<NewsArticleModel>? models) {
  return models?.map((model) => mapArticleModelToEntity(model)).toList() ?? [];
}

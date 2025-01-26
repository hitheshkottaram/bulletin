import 'dart:convert';
import 'package:bullet_in/features/home/domain/entity/news_article_entity.dart';

NewsArticleModel newsArticleEntityFromJson(String str) =>
    NewsArticleModel.fromJson(json.decode(str));

String newsArticleEntityToJson(NewsArticleModel data) =>
    json.encode(data.toJson());

class NewsArticleApiResponse {
  final String? status;
  final int? totalResults;
  final List<NewsArticleModel>? articles;

  NewsArticleApiResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory NewsArticleApiResponse.fromJson(Map<String, dynamic> json) {
    return NewsArticleApiResponse(
      status: json['status'] as String?,
      totalResults: json['totalResults'] as int?,
      articles: (json['articles'] as List<dynamic>?)
          ?.map(
              (item) => NewsArticleModel.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'totalResults': totalResults,
      'articles': articles?.map((article) => article.toJson()).toList(),
    };
  }
}

class NewsArticleModel extends NewsArticleEntity {
  const NewsArticleModel(
      {SourceModel? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      DateTime? publishedAt,
      String? content});

  factory NewsArticleModel.fromJson(Map<String, dynamic> json) =>
      NewsArticleModel(
        source: SourceModel.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "source": (source as SourceModel).toJson(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt?.toIso8601String(),
        "content": content,
      };
}

class SourceModel extends Source {
  const SourceModel({String? id, String? name});
  factory SourceModel.fromJson(Map<String, dynamic> json) => SourceModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

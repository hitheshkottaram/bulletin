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

class NewsArticleModel {
  final SourceModel? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final DateTime? publishedAt;
  final String? content;

  NewsArticleModel({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory NewsArticleModel.fromJson(Map<String, dynamic> json) {
    return NewsArticleModel(
      source:
          json["source"] != null ? SourceModel.fromJson(json["source"]) : null,
      author: json["author"] ?? "empty",
      title: json["title"] ?? "empty",
      description: json["description"] ?? "empty",
      url: json["url"] ?? "empty",
      urlToImage: json["urlToImage"] ?? "empty",
      publishedAt: json["publishedAt"] != null
          ? DateTime.tryParse(json["publishedAt"])
          : null,
      content: json["content"] ?? "empty",
    );
  }

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



import 'package:newsz/src/data/models/source_model.dart';
import 'package:newsz/src/domain/entities/article.dart';

class ArticleModel extends Article {
  const ArticleModel({
    int? id,
    SourceModel? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) : super(
            id: id,
            source: source,
            author: author,
            title: title,
            description: description,
            url: url,
            urlToImage: urlToImage,
            publishedAt: publishedAt,
            content: content);

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      source: SourceModel.fromJson(map['source'] as Map<String, dynamic>),
      author: map['author'],
      title: map['title'] as String,
      description: map['description'],
      url: map['url'] as String,
      urlToImage: map['urlToImage'],
      publishedAt: map['publishedAt'] as String,
      content: map['content'],
    );
  }
}

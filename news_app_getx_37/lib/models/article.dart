import 'package:news_app_getx/models/sourse.dart';

class Article {
  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
  Source source;
  String? author;
  String title;
  String? description;
  String url;
  String? urlToImage;
  DateTime publishedAt;
  String? content;
}

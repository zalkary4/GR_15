import 'package:news_app_getx/models/article.dart';

class NewsData {
  NewsData({
    required this.status,
    required this.totalResults,
    required this.articles,
  });
  String status;
  int totalResults;
  List<Article> articles;
}

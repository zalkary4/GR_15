import 'package:news_app/model/article.dart';

class ArticleData {
  const ArticleData({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String status;
  final int totalResults;
  final List<Article> articles;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'status': status,
      'totalResults': totalResults,
      'articles': articles.map((x) => x.toJson()).toList(),
    };
  }

  factory ArticleData.fromJson(Map<String, dynamic> map) {
    return ArticleData(
      status: map['status'] as String,
      totalResults: map['totalResults'] as int,
      articles: List<Article>.from(
        (map['articles'] as List<Map<String, Object?>>).map<Article>(
          (x) => Article.fromJson(x),
        ),
      ),
    );
  }
}

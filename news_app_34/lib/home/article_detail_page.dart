import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/model/article.dart';

class ArticleDetailPage extends StatelessWidget {
  const ArticleDetailPage(this.article, {super.key});

  final Article article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(article.title)),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        children: [
          Text(
            article.title,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          if (article.urlToImage != null) Image.network(article.urlToImage!),
          const SizedBox(height: 10),
          Text(
            article.description,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          if (article.content != null) Text(article.content!),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(article.author ?? ''),
              Text(
                DateFormat('y MMMM d').format(article.publishedAt),
              ),
            ],
          )
        ],
      ),
    );
  }
}

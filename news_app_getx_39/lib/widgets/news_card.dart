import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app_getx/constants/app_colors.dart';
import 'package:news_app_getx/models/article.dart';

class NewsCard2 extends StatelessWidget {
  const NewsCard2(this.article, {super.key});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      // child: ListTile(
      //   leading: Image.network(
      //     article.urlToImage ??
      //         'https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg',
      //     errorBuilder: (context, error, stackTrace) {
      //       log('error $error, $stackTrace');
      //       return SizedBox(height: 20);
      //     },
      //     fit: BoxFit.fitHeight,
      //   ),
      //   title: Text(
      //     article.title,
      //     style: Theme.of(context).textTheme.titleMedium,
      //   ),
      // ),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Image.network(
                  article.urlToImage ??
                      'https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg',
                  errorBuilder: (context, error, stackTrace) {
                    log('error $error, $stackTrace');
                    return SizedBox(height: 20);
                  },
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      DateFormat('y MMMM d').format(article.publishedAt),
                      // article.publishedAt.toString(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 7),
          const Divider(color: AppColors.black),
        ],
      ),
    );
  }
}

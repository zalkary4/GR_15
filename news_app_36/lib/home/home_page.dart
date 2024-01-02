import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/constants/app_colors.dart';
import 'package:news_app/home/article_detail_page.dart';
import 'package:news_app/model/atricle_data.dart';
import 'package:news_app/model/fake_data.dart';
import 'package:news_app/widgets/news_card_2.dart';

const link =
    'https://newsapi.org/v2/top-headlines?country=us&apiKey=102ada0be929467a9800798380b1aef5';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ArticleData? data;

  ///bot
  final Dio dio = Dio();

  /// link
  Future<void> getData() async {
    final response = await dio.get(link);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.orange,
        foregroundColor: AppColors.white,
        title: const Text('News Agr'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: fakeData.articles.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => ArticleDetailPage(
                    fakeData.articles[index],
                  ),
                ),
              );
            },
            child: NewsCard2(
              fakeData.articles[index],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.orange,
        foregroundColor: AppColors.white,
        child: const Icon(Icons.search),
      ),
    );
  }
}

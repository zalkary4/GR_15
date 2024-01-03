import 'package:flutter/material.dart';
import 'package:news_app/constants/app_colors.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/widgets/news_card_2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        itemCount: newsFakeList.length,
        itemBuilder: (context, index) {
          return NewsCard2(newsFakeList[index]);
        },
      ),
      // body: ListView.builder(
      //   padding: const EdgeInsets.all(20),
      //   itemCount: fakeData.articles.length,
      //   itemBuilder: (context, index) {
      //     return InkWell(
      //       onTap: () {
      //         Navigator.push<void>(
      //           context,
      //           MaterialPageRoute<void>(
      //             builder: (BuildContext context) => ArticleDetailPage(
      //               fakeData.articles[index],
      //             ),
      //           ),
      //         );
      //       },
      //     );
      //   },
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.orange,
        foregroundColor: AppColors.white,
        child: const Icon(Icons.search),
      ),
    );
  }
}

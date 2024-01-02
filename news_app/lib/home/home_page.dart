import 'package:flutter/material.dart';
import 'package:news_app/constants/app_colors.dart';
import 'package:news_app/home/article_detail_page.dart';
import 'package:news_app/model/fake_data.dart';
import 'package:news_app/model/news_model.dart';

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
          final newModel = newsFakeList[index];
          return Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.network(
                        newModel.image,
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
                            newModel.title,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            newModel.description,
                          ),
                          Text(
                            newModel.dateTime,
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
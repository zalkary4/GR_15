import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_getx/news/controller/news_controller.dart';
import 'package:news_app_getx/widgets/news_card.dart';

class NewsPage extends StatelessWidget {
  const NewsPage(this.controller, {super.key});
  final NewsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
        child: Center(
          child: Obx(
            () {
              if (controller.isLoading.value &&
                  controller.data.value.isEmpty &&
                  controller.error.value.isEmpty) {
                return const CircularProgressIndicator();
              } else if (controller.newsData.value != null) {
                return ListView.builder(
                    itemCount: controller.newsData.value!.articles.length,
                    itemBuilder: (BuildContext context, int index) {
                      final article =
                          controller.newsData.value!.articles[index];
                      return NewsCard2(article);
                    });
              } else if (controller.data.value.isNotEmpty) {
                return Text(controller.error.value);
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getNews();
        },
      ),
    );
  }
}

final countries = {
  'us': 'United State',
  'tr': 'Turkey',
  'in': 'India',
  'de': 'Germany',
  'kr': 'Korea',
  'ru': 'Russia',
  'ar': 'Saudi Arabia',
};

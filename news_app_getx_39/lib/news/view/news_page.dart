import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:news_app_getx/models/country.dart';
import 'package:news_app_getx/news/controller/news_controller.dart';
import 'package:news_app_getx/widgets/news_card.dart';

class NewsPage extends GetView<NewsController> {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController controller = Get.put(NewsController(Client()));
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            onSelected: (v) {
              controller.changeCountry(v);
              controller.getNews();
            },
            itemBuilder: (BuildContext context) {
              return countries
                  .map(
                    (e) => PopupMenuItem(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList();
            },
          )
        ],
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
                return Localizations.override(
                  context: context,
                  // locale: Locale('ar'),
                  locale: Locale(controller.country.value.langCode),
                  child: ListView.builder(
                      itemCount: controller.newsData.value!.articles.length,
                      itemBuilder: (BuildContext context, int index) {
                        final article =
                            controller.newsData.value!.articles[index];
                        return NewsCard2(article);
                      }),
                );
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






// final countries = {
//   'us': 'United State',
//   'tr': 'Turkey',
//   'in': 'India',
//   'de': 'Germany',
//   'kr': 'Korea',
//   'ru': 'Russia',
//   'ae': 'Saudi Arabia',
// };

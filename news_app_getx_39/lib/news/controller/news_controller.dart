import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:news_app_getx/models/country.dart';
import 'package:news_app_getx/models/news_data.dart';

// const apiLink =
//     'https://newsapi.org/v2/top-headlines?country=us&apiKey=102ada0be929467a9800798380b1aef5';

class NewsController extends GetxController {
  NewsController(this.http);

  final Client http;

  RxBool isLoading = false.obs;
  RxString data = ''.obs;
  RxString error = ''.obs;
  Rx<NewsData?> newsData = Rx<NewsData?>(null);
  Rx<Country> country = countries[0].obs;

  Future<void> getNews() async {
    try {
      isLoading.value = true;
      final uri = Uri.parse(getUrl());
      final response = await http.get(uri);

      isLoading.value = false;
      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body) as Map<String, dynamic>;
        newsData.value = NewsData.fromJson(decodedData);
        data.value = response.body;
      } else {
        error.value = 'something went wrong';
      }
    } catch (e) {
      error.value = 'something went wrong';
    }
  }

  void changeCountry(Country value) {
    country.value = value;
    getNews();
  }

  String getUrl() {
    return 'https://newsapi.org/v2/top-headlines?country=${country.value.code}&apiKey=102ada0be929467a9800798380b1aef5';
  }
}

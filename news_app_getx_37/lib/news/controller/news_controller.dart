import 'package:get/get.dart';
import 'package:http/http.dart';

const apiLink =
    'https://newsapi.org/v2/top-headlines?country=us&apiKey=102ada0be929467a9800798380b1aef5';

class NewsController extends GetxController {
  NewsController(this.http);

  final Client http;

  RxBool isLoading = false.obs;
  RxString data = ''.obs;
  RxString error = ''.obs;
  Future<void> getNews() async {
    try {
      isLoading.value = true;
      final uri = Uri.parse(apiLink);
      final response = await http.get(uri);

      isLoading.value = false;
      if (response.statusCode == 200) {
        data.value = response.body;
      } else {
        error.value = 'something went wrong';
      }
    } catch (e) {
      error.value = 'something went wrong';
    }
  }
}

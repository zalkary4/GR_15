import 'package:get/get.dart';
import 'package:http/http.dart';

class NewsController extends GetxController {
  NewsController(this.http);
  RxStatus status = RxStatus.empty();
  dynamic data = '';
  dynamic error = '';
  final Client http;
}

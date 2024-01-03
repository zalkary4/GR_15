import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:news_app_getx/news/controller/news_controller.dart';
import 'package:news_app_getx/news/view/news_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NewsPage(NewsController(Client())),
    );
  }
}

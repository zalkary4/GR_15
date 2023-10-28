import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffecb90b),
      appBar: AppBar(
        elevation: 2.2,
        shadowColor: Colors.black,
        title: const Text(
          'Task 3',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Text('Rich'),
          Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThX5BgHRR1N_HZgIq_TALqgY7t6fuyR9Qo7Q&usqp=CAU')
        ],
      ),
    );
  }
}

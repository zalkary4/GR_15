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
      debugShowCheckedModeBanner: false,
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
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: Colors.brown,
        title: const Text('Task 3', style: TextStyle(color: Colors.black)),
        actions: [Icon(Icons.search)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Rich', style: TextStyle(fontSize: 46)),
            // const SizedBox(height: 200),
            Image.network(
              'https://pngfre.com/wp-content/uploads/diamond-png-image-pngfre-3-1024x620.png',
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}

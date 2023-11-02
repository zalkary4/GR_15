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
      backgroundColor: const Color.fromARGB(255, 102, 215, 106),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Task 4',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Flutter App',
              style: TextStyle(color: Colors.white, fontSize: 48),
            ),
            const Text(
              'Flutter developper',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    size: 30,
                    color: Color(0xff056c5c),
                  ),
                  SizedBox(width: 15),
                  Text(
                    '+996 777 124 456',
                    style: TextStyle(fontSize: 22, color: Color(0xff056c5c)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail_rounded, size: 30, color: Color(0xff056c5c)),
                  SizedBox(width: 15),
                  Text(
                    'Ivanov Ivan',
                    style: TextStyle(fontSize: 22, color: Color(0xff056c5c)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

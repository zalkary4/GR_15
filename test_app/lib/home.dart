import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff343434),
        title: const Text(
          'Task 7',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Кыргызстанда канча область бар?',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

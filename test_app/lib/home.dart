import 'package:flutter/material.dart';
import 'package:test_app/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff343434),
      appBar: AppBar(
        title: const Text(
          'Task 7',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: HomeBody(),
      ),
    );
  }
}

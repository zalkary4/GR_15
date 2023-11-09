import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        title: const Text('Dice App'),
        backgroundColor: const Color(0xffda0037),
      ),
      body: Center(
        child: Row(children: [
          const SizedBox(width: 20),
          Expanded(
            child: Image.asset(
              'assets/icons/dice1.png',
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Image.asset(
              'assets/icons/dice2.png',
            ),
          ),
          const SizedBox(width: 20),
        ]),
      ),
    );
  }
}

import 'package:dice_app/game_page.dart';
import 'package:flutter/material.dart';

class HomePagesecond extends StatelessWidget {
  const HomePagesecond({super.key});

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
        title: const Text('Dice App 2'),
        backgroundColor: const Color(0xffda0037),
      ),
      body: HomePageBody(),
    );
  }
}

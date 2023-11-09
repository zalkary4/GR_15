import 'dart:math';

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
      body: HomePageBody(),
    );
  }
}

class HomePageBody extends StatefulWidget {
  HomePageBody({super.key});
  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int firstDiceIndex = 1;
  int secondDiceIndex = 2;
  Random random = Random();
  void changeDice() {
    // firstDiceIndex++;
    firstDiceIndex = random.nextInt(6) + 1;
    secondDiceIndex = random.nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: InkWell(
            onTap: changeDice,
            child: Row(children: [
              const SizedBox(width: 20),
              Expanded(
                child: Image.asset(
                  'assets/icons/dice$firstDiceIndex.png',
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Image.asset(
                  'assets/icons/dice$secondDiceIndex.png',
                ),
              ),
              const SizedBox(width: 20),
            ]),
          ),
        ),
        Center(
          child: InkWell(
            onTap: changeDice,
            child: Row(children: [
              const SizedBox(width: 20),
              Expanded(
                child: Image.asset(
                  'assets/icons/dice$firstDiceIndex.png',
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Image.asset(
                  'assets/icons/dice$secondDiceIndex.png',
                ),
              ),
              const SizedBox(width: 20),
            ]),
          ),
        ),
      ],
    );
  }
}

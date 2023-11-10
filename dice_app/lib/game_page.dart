import 'dart:math';

import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  HomePageBody({super.key});
  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int clientFirstIndex = 1;
  int clientSecondIndex = 2;
  int clientSum = 0;

  Random random = Random();
  void changeDice() {
    // firstDiceIndex++;
    clientFirstIndex = random.nextInt(6) + 1;
    clientSecondIndex = random.nextInt(6) + 1;
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
                  'assets/icons/dice$clientFirstIndex.png',
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Image.asset(
                  'assets/icons/dice$clientSecondIndex.png',
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
                  'assets/icons/dice$clientFirstIndex.png',
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Image.asset(
                  'assets/icons/dice$clientSecondIndex.png',
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

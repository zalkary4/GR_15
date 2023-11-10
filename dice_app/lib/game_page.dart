import 'dart:math';

import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  HomePageBody({super.key});
  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  //cleant
  int clientFirstIndex = 1;
  int clientSecondIndex = 2;
  int clientSum = 0;
  void clientAction() {
    clientFirstIndex = random.nextInt(6) + 1;
    clientSecondIndex = random.nextInt(6) + 1;
    clientSum = clientSum + clientFirstIndex + clientSecondIndex;
    setState(() {});
  }

// app
  int appFirstIndex = 1;
  int appSecondIndex = 2;
  int appSum = 0;
  Random random = Random();
  void changeDice() {
    // firstDiceIndex++;
    // clientFirstIndex = random.nextInt(6) + 1;
    // clientSecondIndex = random.nextInt(6) + 1;
    // appFirstIndex = random.nextInt(6) + 1;
    // appSecondIndex = random.nextInt(6) + 1;
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  onTap: changeDice,
                  child: Image.asset('assets/icons/dice$clientFirstIndex.png'),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  onTap: changeDice,
                  child: Image.asset('assets/icons/dice$clientSecondIndex.png'),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  onTap: changeDice,
                  child: Image.asset('assets/icons/dice$appFirstIndex.png'),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  onTap: changeDice,
                  child: Image.asset('assets/icons/dice$appSecondIndex.png'),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}

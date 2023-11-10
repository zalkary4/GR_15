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
  int clientSecondIndex = 1;
  int clientSum = 0;
  void clientAction() {
    clientFirstIndex = random.nextInt(6) + 1;
    clientSecondIndex = random.nextInt(6) + 1;
    clientSum = clientSum + clientFirstIndex + clientSecondIndex;
    setState(() {});
    result();
  }

// app
  int appFirstIndex = 1;
  int appSecondIndex = 1;
  int appSum = 0;
  void appAction() {
    appFirstIndex = random.nextInt(6) + 1;
    appSecondIndex = random.nextInt(6) + 1;
    appSum = appSum + appFirstIndex + appSecondIndex;
    setState(() {});
    result();
  }

  Random random = Random();

  void result() {
    if (clientSum >= 50) {
      showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('Good job!!!'),
            actions: [
              TextButton(
                onPressed: () {
                  clientFirstIndex = 1;
                  clientSecondIndex = 1;
                  clientSum = 0;

                  appFirstIndex = 1;
                  appSecondIndex = 1;
                  appSum = 0;
                  Navigator.pop(context);
                  setState(() {});
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else if (appSum >= 50) {
      showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('Ups!!!'),
            actions: [
              TextButton(
                onPressed: () {
                  clientFirstIndex = 1;
                  clientSecondIndex = 1;
                  clientSum = 0;

                  appFirstIndex = 1;
                  appSecondIndex = 1;
                  appSum = 0;
                  Navigator.pop(context);
                  setState(() {});
                },
                child: const Text('You lost!'),
              ),
            ],
          );
        },
      );
    }
  }

  // void changeDice() {
  // firstDiceIndex++;
  // clientFirstIndex = random.nextInt(6) + 1;
  // clientSecondIndex = random.nextInt(6) + 1;
  // appFirstIndex = random.nextInt(6) + 1;
  // appSecondIndex = random.nextInt(6) + 1;
  // setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'My $clientSum',
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  onTap: clientAction,
                  child: Image.asset('assets/icons/dice$clientFirstIndex.png'),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  onTap: clientAction,
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
                  onTap: appAction,
                  child: Image.asset('assets/icons/dice$appFirstIndex.png'),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  onTap: appAction,
                  child: Image.asset('assets/icons/dice$appSecondIndex.png'),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          Text(
            'App $appSum',
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

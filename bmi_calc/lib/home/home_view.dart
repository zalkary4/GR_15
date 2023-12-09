import 'dart:math';

import 'package:bmi_calc/widgets/gender_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff211834),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff211834),
        title: const Text('BMI Calc'),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: GenderCard(
                  icon: Icons.male,
                  text: 'Male',
                )),
                SizedBox(width: 30),
                Expanded(
                    child: GenderCard(
                  icon: Icons.female,
                  text: 'Female',
                )),
              ],
            ),
            Card(
              color: Color(0xff0b0120),
              child: Column(
                children: [
                  Text('Height'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('180'),
                      Text('cm'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

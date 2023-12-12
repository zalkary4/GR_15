import 'dart:math';

import 'package:bmi_calc/widgets/gender_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff211834),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff211834),
        title: const Text('BMI Calc'),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
        child: Column(
          children: [
            const Row(
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
            const SizedBox(height: 15),
            HeightCard(
              value: 180,
              onChanged: (v) {},
            ),
          ],
        ),
      ),
    );
  }
}

class HeightCard extends StatelessWidget {
  const HeightCard({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final double value;
  final void Function(double)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff0b0120),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 25, 15, 25),
        child: Column(
          children: [
            const Text(
              'Height',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xffceccd2),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${value.toInt()}',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'cm',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffceccd2),
                    height: 2.7,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: CupertinoSlider(
                value: 180,
                min: 30,
                max: 230,
                activeColor: const Color(0xffff1065),
                thumbColor: Colors.white,
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

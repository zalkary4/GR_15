import 'dart:math';

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
            )
          ],
        ),
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('$text basyldy' as num);
      },
      child: Card(
        color: const Color(0xff010120),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Icon(
              icon,
              size: 135,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 26,
                color: Color(0xffceccd2),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

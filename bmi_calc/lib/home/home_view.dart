import 'package:bmi_calc/widgets/gender_card.dart';
import 'package:bmi_calc/widgets/height_card.dart';
import 'package:bmi_calc/widgets/remove_add_card.dart';
import 'package:bmi_calc/widgets/bottom_nav_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isMale = false;
  double height = 180;
  double weight = 60;
  int age = 30;
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
            Row(
              children: [
                Expanded(
                    child: GenderCard(
                  icon: Icons.male,
                  text: 'Male',
                  isActive: isMale,
                  onTap: () {
                    isMale = true;
                    setState(() {});
                  },
                )),
                const SizedBox(width: 30),
                Expanded(
                    child: GenderCard(
                  icon: Icons.female,
                  text: 'Female',
                  isActive: !isMale,
                  onTap: () {
                    isMale = false;
                    setState(() {});
                  },
                )),
              ],
            ),
            const SizedBox(height: 15),
            HeightCard(
              value: height,
              onChanged: (v) {
                height = v;
                setState(() {});
                // print(v);
              },
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: RemoveAddCard(
                    text: 'Weight',
                    value: weight,
                    onPressedRemove: () {
                      weight--;
                      setState(() {});
                    },
                    onPressedAdd: () {
                      weight++;
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: RemoveAddCard(
                    text: 'AGE',
                    value: age.toDouble(),
                    onPressedRemove: () {
                      age--;
                      setState(() {});
                    },
                    onPressedAdd: () {
                      age++;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottNavigationBar(
        text: 'Calculate',
        onPressed: () {
          final bmi = calculate();
          showDialog(
            context: context,
            builder: (ctrx) {
              return AlertDialog(
                backgroundColor: const Color(0xff0b0120),
                title: Center(
                  child: Text(
                    bmi.$1,
                    style: TextStyle(
                      color: bmi.$4,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                content: Text(
                  '${bmi.$2}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                  ),
                  textAlign: TextAlign.center,
                ),
                actions: [
                  Text(
                    '${bmi.$3}',
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  (String, double, String, Color) calculate() {
    final v = weight / ((height * height) / 10000);
    final result = double.parse(v.toStringAsFixed(1));
    if (result < 18.5) {
      return (
        'Normal',
        result,
        'Aryk',
        Colors.blue,
      );
    } else if (result >= 18.5 && result < 25) {
      return (
        'Normalduusuz',
        result,
        'Good',
        Colors.green,
      );
    } else {
      return (
        'Toluksuz',
        result,
        'Toluktuu',
        Colors.red,
      );
    }
  }
}

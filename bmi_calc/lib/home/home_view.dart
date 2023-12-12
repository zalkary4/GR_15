import 'package:bmi_calc/widgets/gender_card.dart';
import 'package:bmi_calc/widgets/height_card.dart';
import 'package:bmi_calc/widgets/remove_add_card.dart';
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
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: RemoveAddCard(
                    text: 'Weight',
                    value: 60,
                    onPressedRemove: () {},
                    onPressedAdd: () {},
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: RemoveAddCard(
                    text: 'AGE',
                    value: 28,
                    onPressedRemove: () {},
                    onPressedAdd: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffff1065),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            fixedSize: const Size(double.infinity, 73)),
        onPressed: () {},
        child: const Text('Calculate'),
      ),
    );
  }
}

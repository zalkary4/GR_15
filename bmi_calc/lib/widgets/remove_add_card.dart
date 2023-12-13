import 'package:bmi_calc/widgets/circul_button.dart';
import 'package:flutter/material.dart';

class RemoveAddCard extends StatelessWidget {
  const RemoveAddCard({
    super.key,
    required this.text,
    required this.value,
    required this.onPressedRemove,
    required this.onPressedAdd,
  });

  final String text;
  final double value;
  final void Function()? onPressedRemove;
  final void Function()? onPressedAdd;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff0b0120),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
        child: Column(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 26,
                color: Color(0xffceccd2),
              ),
            ),
            Text(
              '$value',
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color(0xffceccd2),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleButton(
                  icon: Icons.remove,
                  onPressed: onPressedRemove,
                ),
                CircleButton(
                  icon: Icons.add,
                  onPressed: onPressedAdd,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

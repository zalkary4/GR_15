import 'package:flutter/material.dart';
import 'package:test_app/custom_button.dart';
import 'package:test_app/question_text.dart';
import 'package:test_app/suroo.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final suroolor = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10];
  List<bool> jooptor = [];
  int index = 0;
  void incrementIndex(bool joop) {
    final result = joop == suroolor[index].joop;
    jooptor.add(result);
    if (index < 9) {
      index++;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 2),
        QuestionText(text: suroolor[index].text),
        const Spacer(),
        CustomButton(
          bgColor: const Color(0xff4cb050),
          text: 'Туура',
          baskanda: () {
            incrementIndex(true);
          },
        ),
        const SizedBox(height: 20),
        CustomButton(
          bgColor: const Color(0xffef443a),
          text: 'Туура эмес',
          baskanda: () {
            incrementIndex(false);
          },
        ),
        const Spacer(flex: 3),
        Row(
          children: jooptor
              .map(
                (e) => Icon(
                  e ? Icons.check : Icons.close,
                  color: e ? Colors.green : Colors.red,
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

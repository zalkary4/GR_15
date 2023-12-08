import 'package:flutter/material.dart';
import 'package:test_app/custom_button.dart';
import 'package:test_app/question_text.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 2),
        const QuestionText(text: 'Кыргызстанда 7 область барбы?'),
        const Spacer(),
        CustomButton(
          bgColor: const Color(0xff4cb050),
          text: 'Туура',
          baskanda: () {
            print('tuura');
          },
        ),
        const SizedBox(height: 20),
        CustomButton(
          bgColor: const Color(0xffef443a),
          text: 'Туура эмес',
          baskanda: () {
            print('tuura emes');
          },
        ),
        const Spacer(flex: 3),
        const Row(
          children: [
            Icon(
              Icons.check,
              color: Color(0xff4cb050),
            ),
            Icon(
              Icons.close,
              color: Color(0xffef443a),
            ),
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

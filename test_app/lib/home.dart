import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff343434),
      appBar: AppBar(
        title: const Text(
          'Task 7',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text(
              'Кыргызстанда 7 область барбы?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
            ),
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
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.bgColor,
    required this.text,
    required this.baskanda,
  });

  final void Function()? baskanda;
  final Color bgColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            foregroundColor: Colors.white,
            backgroundColor: bgColor,
            fixedSize: const Size(335, 70.0)),
        onPressed: () {},
        child: Text(text));
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff343434),
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
            const Text(
              'Кыргызстанда 7 область барбы?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
            ),
            CustomButton(
              bgColor: Color(0xff4cb050),
              text: 'Туура',
              baskanda: () {
                print('tuura');
              },
            ),
            CustomButton(
              bgColor: Color(0xffef443a),
              text: 'Туура эмес',
              baskanda: () {
                print('tuura emes');
              },
            ),
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

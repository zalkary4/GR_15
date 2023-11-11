import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Piano',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const Spacer(),
          Row(
            children: [
              PianoWhiteButton(text: 'f1'),
              PianoWhiteButton(text: 'f2'),
              PianoWhiteButton(text: 'f3'),
              PianoWhiteButton(text: 'f4'),
              PianoWhiteButton(text: 'f5'),
              PianoWhiteButton(text: 'f6'),
              PianoWhiteButton(text: 'f7'),
            ],
          ),
        ],
      ),
    );
  }
}

class PianoWhiteButton extends StatelessWidget {
  const PianoWhiteButton({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        fixedSize: const Size(60, 260),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      onPressed: () {},
      child: Column(
        children: [
          const Spacer(),
          Text(text),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

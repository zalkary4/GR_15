import 'package:flutter/material.dart';
import 'package:piano_app/components/piano_white_button.dart';

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
          Stack(
            children: [
              SizedBox(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    // PianoBlackButton(),
                    PianoWhiteButton(text: 'f1'),
                    PianoWhiteButton(text: 'f2'),
                    PianoWhiteButton(text: 'f3'),
                    PianoWhiteButton(text: 'f4'),
                    PianoWhiteButton(text: 'f5'),
                    PianoWhiteButton(text: 'f6'),
                    PianoWhiteButton(text: 'f7'),
                    PianoWhiteButton(text: 'f1'),
                    PianoWhiteButton(text: 'f2'),
                    PianoWhiteButton(text: 'f3'),
                    PianoWhiteButton(text: 'f4'),
                    PianoWhiteButton(text: 'f5'),
                    PianoWhiteButton(text: 'f6'),
                    PianoWhiteButton(text: 'f7'),
                  ],
                ),
              ),
              SizedBox(
                height: 130,
                child: ListView(
                  children: [
                    PianoBlackButton(),
                    PianoBlackButton(),
                    PianoBlackButton(),
                    PianoBlackButton(),
                    PianoBlackButton(),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8)
        ],
      ),
    );
  }
}

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('f1'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        minimumSize: Size(60, 130),
        fixedSize: Size(60, 130),
        maximumSize: Size(60, 130),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}

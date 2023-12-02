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
          SizedBox(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
                  children: [
                    Row(
                      children: [
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
                    Row(
                      children: const [
                        PianoBlackButton(
                          text: 'f1',
                          visible: false,
                        ),
                        PianoBlackButton(text: 'f2'),
                        PianoBlackButton(
                          text: 'f3',
                          visible: false,
                        ),
                        PianoBlackButton(text: 'f4'),
                        PianoBlackButton(text: 'f5'),
                        PianoBlackButton(text: 'f6'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8)
        ],
      ),
    );
  }
}

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton({
    super.key,
    required this.text,
    this.visible = true,
  });
  final String text;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: 80,
      child: Visibility(
        visible: true,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(text),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            // minimumSize: Size(60, 130),
            fixedSize: Size(60, 130),
            // maximumSize: Size(60, 130),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
    );
  }
}

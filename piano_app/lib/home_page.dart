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
              children: const [
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
                      children: [
                        PianoBlackButton(text: 'f1', leftMargin: 55),
                        PianoBlackButton(text: 'f2', leftMargin: 25),
                        PianoBlackButton(text: '', visible: false),
                        PianoBlackButton(text: 'f4', leftMargin: 45),
                        PianoBlackButton(text: 'f5', leftMargin: 25),
                        PianoBlackButton(text: 'f6', leftMargin: 25),
                        PianoBlackButton(text: '', visible: false),
                        PianoBlackButton(text: 'f2', leftMargin: 45),
                        PianoBlackButton(text: 'f2', leftMargin: 26),
                        PianoBlackButton(text: '', visible: false),
                        PianoBlackButton(text: 'f4', leftMargin: 45),
                        PianoBlackButton(text: 'f5', leftMargin: 25),
                        PianoBlackButton(text: 'f6', leftMargin: 25),
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
    this.leftMargin = 0,
  });
  final String text;
  final bool visible;
  final double leftMargin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftMargin),
      child: SizedBox(
        height: 160,
        width: 60,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              fixedSize: const Size(60, 160),
              padding: EdgeInsets.all(0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(4),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

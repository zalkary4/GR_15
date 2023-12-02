import 'package:flutter/material.dart';
import 'package:piano_app/components/piano_black_button.dart';
import 'package:piano_app/components/piano_white_button.dart';

class PianoKeyBoard extends StatelessWidget {
  const PianoKeyBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

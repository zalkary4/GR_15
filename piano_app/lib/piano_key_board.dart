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
                  PianoWhiteButton(text: 'f1', nota: 'do.wav'),
                  PianoWhiteButton(text: 'f2', nota: 're.wav'),
                  PianoWhiteButton(text: 'f3', nota: 'mi.wav'),
                  PianoWhiteButton(text: 'f4', nota: 'fa.wav'),
                  PianoWhiteButton(text: 'f5', nota: 'sol.wav'),
                  PianoWhiteButton(text: 'f6', nota: 'lya.wav'),
                  PianoWhiteButton(text: 'f7', nota: 'si.wav'),
                  PianoWhiteButton(text: 'f1', nota: 'do.wav'),
                  PianoWhiteButton(text: 'f2', nota: 're.wav'),
                  PianoWhiteButton(text: 'f3', nota: 'mi.wav'),
                  PianoWhiteButton(text: 'f4', nota: 'fa.wav'),
                  PianoWhiteButton(text: 'f5', nota: 'sol.wav'),
                  PianoWhiteButton(text: 'f6', nota: 'lya.wav'),
                  PianoWhiteButton(text: 'f7', nota: 'si.wav'),
                ],
              ),
              Row(
                children: [
                  PianoBlackButton(text: 'f1', leftMargin: 55, nota: 'Db.wav'),
                  PianoBlackButton(text: 'f2', nota: 'Eb.wav', leftMargin: 25),
                  PianoBlackButton(text: '', nota: '', visible: false),
                  PianoBlackButton(text: 'f4', nota: 'Gb.wav', leftMargin: 45),
                  PianoBlackButton(text: 'f5', nota: 'Ab.wav', leftMargin: 25),
                  PianoBlackButton(text: 'f6', nota: 'Bb.wav', leftMargin: 25),
                  PianoBlackButton(text: '', nota: '', visible: false),
                  PianoBlackButton(text: 'f2', nota: 'Eb.wav', leftMargin: 45),
                  PianoBlackButton(text: 'f2', nota: 'ab.wav', leftMargin: 26),
                  PianoBlackButton(text: '', nota: '', visible: false),
                  PianoBlackButton(text: 'f4', nota: 'Gb.wav', leftMargin: 45),
                  PianoBlackButton(text: 'f5', nota: 'Ab.wav', leftMargin: 25),
                  PianoBlackButton(text: 'f6', nota: 'Bb.wav', leftMargin: 25),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final player = AudioPlayer();

class PianoWhiteButton extends StatelessWidget {
  const PianoWhiteButton({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.only(bottom: 8),
          alignment: Alignment.bottomCenter,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          fixedSize: const Size(80, 260),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: () {
          player.play(AssetSource('audios/do.wav'));
        },
        child: Text(text),
      ),
    );
  }
}

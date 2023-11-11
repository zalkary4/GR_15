import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final player = AudioPlayer();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Piano',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('audios/note1.wav'),
                );
              },
              child: Container(
                color: const Color(0xffef4434),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('audios/note2.wav'),
                );
              },
              child: Container(
                color: const Color(0xffef99700),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('audios/note3.wav'),
                );
              },
              child: Container(
                color: const Color(0xffffe93b),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('audios/note4.wav'),
                );
              },
              child: Container(
                color: const Color(0xff4CB050),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('audios/note5.wav'),
                );
              },
              child: Container(
                color: const Color(0xff2E968C),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('audios/note6.wav'),
                );
              },
              child: Container(
                color: const Color(0xff2996F5),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('audios/note7.wav'),
                );
              },
              child: Container(
                color: const Color(0xff9B28B1),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
      ),
      bottomNavigationBar: const SizedBox(height: 70),
    );
  }
}

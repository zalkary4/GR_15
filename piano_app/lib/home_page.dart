import 'package:flutter/material.dart';
import 'package:piano_app/components/piano_black_button.dart';
import 'package:piano_app/components/piano_white_button.dart';
import 'package:piano_app/piano_key_board.dart';

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
      body: const Column(
        children: [
          Spacer(),
          PianoKeyBoard(),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

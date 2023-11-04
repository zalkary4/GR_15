import 'package:flutter/material.dart';

class HomePageLess extends StatelessWidget {
  const HomePageLess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Less Widget'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('0'),
            ),
          )
        ]),
      ),
    );
  }
}

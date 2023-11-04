import 'package:flutter/material.dart';

class HomePageLess extends StatelessWidget {
  const HomePageLess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Less Widget'),
      ),
      body: const Center(
        child: CounterRebuild(),
      ),
    );
  }
}

class CounterRebuild extends StatefulWidget {
  const CounterRebuild({
    super.key,
  });

  @override
  State<CounterRebuild> createState() => _CounterRebuildState();
}

class _CounterRebuildState extends State<CounterRebuild> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 150,
            vertical: 20,
          ),
          child: Text(
            'San: $count ',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      const SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              count--;
              print(count);
              setState(() {});
            },
            child: Icon(Icons.remove),
          ),
          ElevatedButton(
            onPressed: () {
              count++;
              print(count);
              setState(() {});
            },
            child: Icon(Icons.add),
          )
        ],
      )
    ]);
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: ThemeDataDart(),
    );
  }
}

class ThemeDataDart extends StatelessWidget {
  const ThemeDataDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text('State Less Widget'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.light_mode),
          ),
        ],
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
    print('great State:  $count++');
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

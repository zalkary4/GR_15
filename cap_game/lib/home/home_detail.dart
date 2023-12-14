import 'package:cap_game/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';

class HomeDetailView extends StatefulWidget {
  const HomeDetailView({super.key});

  @override
  State<HomeDetailView> createState() => _HomeDetailViewState();
}

class _HomeDetailViewState extends State<HomeDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Asia'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Bishkek',
            style: TextStyle(fontSize: 38),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.network('src'),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('KG'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('KZ'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('UZ'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('TR'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
        children: [
          const Text(
            'Bishkek',
            style: TextStyle(fontSize: 38),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.network('src'),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              OptionButton(),
              OptionButton(),
            ],
          ),
          const Row(
            children: [
              OptionButton(),
              OptionButton(),
            ],
          ),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const Icon(Icons.star);
              },
            ),
          )
        ],
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  const OptionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(double.infinity, 70),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: const Text('KG'),
        ),
      ),
    );
  }
}

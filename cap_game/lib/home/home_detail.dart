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
          const SizedBox(height: 20),
          const Text(
            'Bishkek',
            style: TextStyle(fontSize: 38),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.network(
              'https://tripplanet.ru/wp-content/uploads/asia/kyrgyzstan/bishkek/dostoprimechatelnosti-bishkeka.jpg',
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.fitHeight,
            ),
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
          const Spacer(),
          SizedBox(
            height: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                // padding: EdgeInsets.all(20),
                scrollDirection: Axis.horizontal,
                itemCount: 40,
                itemBuilder: (BuildContext context, int index) {
                  return const Icon(Icons.star);
                },
              ),
            ),
          ),
          const SizedBox(height: 50)
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
              textStyle: const TextStyle(fontSize: 18),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: const Text('KG', textAlign: TextAlign.center),
        ),
      ),
    );
  }
}

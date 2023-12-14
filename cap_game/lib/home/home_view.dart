import 'package:cap_game/models/continent.dart';
import 'package:cap_game/widgets/app_bar_title.dart';
import 'package:cap_game/widgets/continent_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Capital'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/settings.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 1),
          child: Divider(
            color: Colors.black,
            indent: 15,
            endIndent: 15,
            thickness: 2,
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
        itemCount: continents.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return ContinentCard(continent: continents[index]);
        },
      ),
    );
  }
}

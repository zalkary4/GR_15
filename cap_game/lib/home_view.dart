import 'package:cap_game/models/continent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Capital',
          style: GoogleFonts.besley(
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
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
          final continent = continents[index];
          return Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 22,
                child: DecoratedBox(
                    decoration: const BoxDecoration(color: Color(0xffeeeeee)),
                    child: Text(continent.name)),
              ),
              Image.asset(
                continent.imagePath,
                fit: BoxFit.cover,
              ),
            ],
          );
        },
      ),
    );
  }
}

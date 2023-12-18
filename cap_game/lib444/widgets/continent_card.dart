import 'package:cap_game/home/home_detail.dart';
import 'package:cap_game/models/continent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinentCard extends StatelessWidget {
  ContinentCard({
    super.key,
    required this.continent,
  });

  final Continent continent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => HomeDetailView(continent.tests),
          ),
        );
      },
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 22,
            child: DecoratedBox(
              decoration: const BoxDecoration(color: Color(0xffeeeeee)),
              child: Center(
                child: Text(
                  continent.name,
                  style: GoogleFonts.besley(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Image.asset(
            continent.imagePath,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

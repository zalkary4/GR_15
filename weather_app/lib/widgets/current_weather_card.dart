import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheater_app/constatnts/assets_constants.dart';

class CurrentWeatherCard extends StatelessWidget {
  const CurrentWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AssetsConst.weather05,
          height: 100,
        ),
        Column(
          children: [
            Stack(
              children: [
                const Text(
                  '19 ',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 12,
                  child: SvgPicture.asset(
                    AssetsConst.degreeSign,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

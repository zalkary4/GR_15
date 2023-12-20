import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheater_app/constatnts/assets_constants.dart';
import 'package:wheater_app/constatnts/colors_const.dart';

class CurrentWeatherCard extends StatelessWidget {
  const CurrentWeatherCard({
    super.key,
    required this.degree,
    required this.weatherState,
    required this.icon,
  });

  final String degree;
  final String weatherState;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          icon,
          height: 100,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Text(
                  '$degree ',
                  style: const TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                    color: AppColors.degreeTextColor,
                    height: 1,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: SvgPicture.asset(
                    AssetsConst.degreeSign,
                    height: 30,
                  ),
                ),
              ],
            ),
            Text(
              '   $weatherState',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.degreeTextColor,
              ),
            )
          ],
        ),
      ],
    );
  }
}

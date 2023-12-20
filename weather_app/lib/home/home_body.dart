import 'package:flutter/material.dart';
import 'package:wheater_app/constatnts/assets_constants.dart';
import 'package:wheater_app/constatnts/colors_const.dart';
import 'package:wheater_app/widgets/city_time.dart';
import 'package:wheater_app/widgets/current_weather_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CityTimeWidget(
          city: 'Bishkek',
          time: 'Tue, Jun 30',
        ),
        Container(),
        const CurrentWeatherCard(
          degree: '19',
          weatherState: 'Rainy',
          icon: AssetsConst.weather05,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wheater_app/constatnts/colors_const.dart';

class CityTimeWidget extends StatelessWidget {
  const CityTimeWidget({
    super.key,
    required this.city,
    required this.time,
  });
  final String city;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          city,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: AppColors.titleTextColor,
          ),
        ),
        const SizedBox(height: 7),
        Text(
          time,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: AppColors.timeTextColor,
          ),
        ),
      ],
    );
  }
}

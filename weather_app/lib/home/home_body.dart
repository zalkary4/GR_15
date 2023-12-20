import 'package:flutter/material.dart';
import 'package:wheater_app/constatnts/colors_const.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Bishkek \nBishkek',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: AppColors.titleTextColor,
          ),
        ),
        const SizedBox(height: 7),
        const Text(
          'Tue, Jun 30',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: AppColors.timeTextColor,
          ),
        ),
        Container(),
      ],
    );
  }
}

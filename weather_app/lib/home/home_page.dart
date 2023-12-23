import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheater_app/constants/assets_constants.dart';
import 'package:wheater_app/constants/colors_const.dart';
import 'package:wheater_app/home/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        backgroundColor: AppColors.bg02,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AssetsConst.search),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AssetsConst.menu),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              AppColors.bg01,
              AppColors.bg02,
            ],
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15,
          ),
          child: HomeBody(),
        ),
      ),
    );
  }
}

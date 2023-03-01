import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodcarev1/pages/splash/splash_controller.dart';
import 'package:foodcarev1/themes/resources.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Resources.color.primaryBg,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/foodcare_logo.png',
            height: 170,
          ),
          SizedBox(height: 20),
          Text(
            "foodCare",
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'PlusJakartaSans',
              fontWeight: FontWeight.w800,
              decoration: TextDecoration.none,
              color: Resources.color.primaryText,
            ),
          ),
          Text(
            "with Food, we Care",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'PlusJakartaSans',
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              color: Resources.color.secondaryText,
            ),
          )
        ],
      ),
    );
  }
}

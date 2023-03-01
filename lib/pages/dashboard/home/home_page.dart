import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodcarev1/pages/splash/splash_controller.dart';
import 'package:foodcarev1/themes/resources.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../dashboard_controller.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          top: 32,
          left: 20,
          right: 20,
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: "Welcome back,\n",
                  style: TextStyle(
                    fontFamily: Resources.font.primaryFont,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  children: [
                    WidgetSpan(
                      child: Text(
                        "Jody Yuantoro",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: Resources.font.primaryFont,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CarouselSlider.builder(
            itemCount: controller.imageList.length,
            itemBuilder: (context, index, realIndex) {
              return Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      controller.imageList[index],
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: 180,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 10),
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              enlargeCenterPage: true,
            ),
            key: const Key("carousel"),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "Mau Bantu Apa Hari Ini?",
            style: TextStyle(
              fontFamily: Resources.font.primaryFont,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          Text("Donasi Terdekat"),
          Text("Pilihan foodCare"),
        ],
      ),
    );
  }
}

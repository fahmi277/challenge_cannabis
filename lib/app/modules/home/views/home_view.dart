import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: double.infinity,
          child: Image.asset(
            'assets/cannabis_bg.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 84.h,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90.r),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      color: Colors.white,
                      height: 90,
                      width: 90,
                    ),
                    Image.asset(
                      'assets/ghost.png',
                      height: 50.sp,
                      width: 50.sp,
                      fit: BoxFit.fill,
                      // fit: BoxFit.fitHeight,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 29.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              AutoSizeText(
                'Menjual berbagai jenis produk dari pemanfaatan tanaman Ganja dan Kratom',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 44.h,
              ),
              InkWell(
                onTap: controller.goDashboard,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  child: Container(
                    color: Colors.white,
                    height: 53.h,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 41.h,
              ),
            ],
          ),
        )
      ],
    ));
  }
}

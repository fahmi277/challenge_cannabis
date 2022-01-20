// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:challenge_cannabis/app/data/utils/images_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: [
            ContentDashboard(
              controller: controller,
            ),
            Center(
              child: Text(
                "Fitur Pesan Lagi digodog",
                style: TextStyle(
                    // color: Colors.grey,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                "Fitur Transaksi Lagi digodog",
                style: TextStyle(
                    // color: Colors.grey,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                "Fitur Akun Lagi digodog",
                style: TextStyle(
                    // color: Colors.grey,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Pesan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.autorenew),
              label: 'Transaksi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Akun',
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          onTap: controller.onItemTapped,
        ),
      );
    });
  }
}

class ContentDashboard extends StatelessWidget {
  DashboardController controller;
  ContentDashboard({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 45.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 29.w, right: 29.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Pengiriman ke",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 24.sp,
                              )
                            ],
                          ),
                          AutoSizeText(
                            'JL. Oevang Oeray, Sintang, Kalbar',
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.bold),
                            maxLines: 1,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(
                          Icons.people,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Card(
                      child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Find for Medical Marijuana'),

                    // textAlign: TextAlign.center,
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 54.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29.w),
              child: SizedBox(
                height: 105.h,
                child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, count) {
                      return Row(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.r)),
                                child: Image.asset(controller.imagePromo[count],
                                    height: 105.h,
                                    width: 256.w,
                                    fit: BoxFit.fill),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 13.w),
                                child: Center(
                                  child: Text(
                                    "Marijuana West\nDiscount ${21 * count} % ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 16.w,
                          )
                        ],
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 29.w, right: 29.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kategori",
                        style: TextStyle(
                            // color: Colors.grey,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Lihat Semua",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  // Obx(() {
                  //   return
                  SizedBox(
                    height: 40.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: ClampingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, count) {
                          return Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.changeColor(count);
                                },
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.r)),
                                  child: Container(
                                    height: 40.h,
                                    width: 115.w,
                                    color: count == 0
                                        ? Colors.indigo
                                        : Colors.grey,
                                    child: Center(
                                      child: Text(
                                        controller.kategori[count],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 31.w,
                              )
                            ],
                          );
                        }),
                  )
                  //   ;
                  // }
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 29.w, right: 29.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Produk Terpopuler",
                        style: TextStyle(
                            // color: Colors.grey,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Lihat Semua",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29.w),
              child: SizedBox(
                height: 230.h,
                child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    itemBuilder: (context, count) {
                      return Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.r)),
                                child: Image.asset(
                                  controller.imagePromo[2 - count],
                                  height: 152.h,
                                  width: 175.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              SizedBox(
                                width: 175.w,
                                child: AutoSizeText(
                                  controller.kategori[count],
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              SizedBox(
                                width: 175.w,
                                child: AutoSizeText(
                                  controller.slogan[count],
                                  style: TextStyle(
                                      fontSize: 14.sp, color: Colors.grey),
                                  maxLines: 2,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 22.w,
                          )
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

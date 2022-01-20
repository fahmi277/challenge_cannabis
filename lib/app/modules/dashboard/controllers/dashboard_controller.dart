// ignore_for_file: avoid_print

import 'package:challenge_cannabis/app/data/utils/images_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  List imagePromo = [
    ImagesData.cannabisKratom,
    ImagesData.cannabisMinyak,
    ImagesData.cannabisSerbuk
  ];

  List kategori = ['Marijuana', 'Minyak', 'Serbuk', 'Tembakau', 'Cengkeh'];
  List slogan = [
    'Paduan rasa mariyuana khas lokal',
    'Kemurnian rasa minyak tradisional',
    'Solusi mudah nyeduh marijuana',
  ];

  final countKategori = 0.obs;
  final colorKategori = Colors.indigo.obs;

    var selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void changeColor(int count) {
    countKategori.value = count;
    print(count);
  }
    void onItemTapped(int index) {
    selectedIndex.value = index;
    update();
  }
}

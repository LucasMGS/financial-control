import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monetine/src/pages/home/views/home_page.dart';
import 'package:monetine/src/pages/profile/profile_page.dart';

class MonetineBottomNavBarController extends GetxController {
  Rx<int> currentIndex = 0.obs;

  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
  ];

  setCurrentIndex(int newIndex) {
    currentIndex.value = newIndex;
  }
}

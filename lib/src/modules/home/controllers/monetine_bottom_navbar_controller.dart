import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monetine/src/modules/creditCard/credit_card_page.dart';
import 'package:monetine/src/modules/home/views/home_page.dart';
import 'package:monetine/src/modules/profile/profile_page.dart';

class MonetineBottomNavBarController extends GetxController {
  Rx<int> currentIndex = 0.obs;

  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
    CreditCardPage(),
  ];

  setCurrentIndex(int newIndex) {
    currentIndex.value = newIndex;
  }
}

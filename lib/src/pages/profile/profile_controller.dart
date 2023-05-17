import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  Rx<bool> isDarkMode = Get.isDarkMode.obs;
  ThemeMode get selectedThemeMode =>
      isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

  setTheme(bool newValue) {
    if (!newValue) {
      isDarkMode.value = false;
      Get.changeThemeMode(ThemeMode.light);
    } else {
      isDarkMode.value = true;
      Get.changeThemeMode(ThemeMode.dark);
    }
  }
}

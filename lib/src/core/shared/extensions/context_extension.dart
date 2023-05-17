import 'dart:io';

import 'package:flutter/material.dart';

extension ScreenUtils on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double percentWidth(double percent) => screenWidth * percent;
  double percentHeight(double percent) => screenHeight * percent;

  double get fontSizeAuto => _resizeFontSize();

  double _resizeFontSize() {
    if (Platform.isAndroid || Platform.isIOS) {
      if (screenWidth >= 1920) {
        return 64;
      }

      if (screenWidth >= 1366) {
        return 58;
      }

      if (screenWidth >= 940) {
        return 52;
      }

      if (screenWidth >= 720) {
        return 46;
      }

      if (screenWidth >= 375) {
        return 23;
      }

      if (screenWidth >= 360) {
        return 22;
      }
    }
    return 64;
  }
}

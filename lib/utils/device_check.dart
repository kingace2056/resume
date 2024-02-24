import 'package:flutter/material.dart';

class DeviceCheck {
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 500 &&
        MediaQuery.of(context).size.width < 1024;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }
}

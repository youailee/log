import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardStyle {
  // Color mainColor = Color.fromRGBO(r, g, b, opacity);

  static Color mainColor = const Color.fromRGBO(34, 32, 38, 1);

  /// 255, 51, 1,
  static Color redText = const Color.fromRGBO(255, 51, 1, 1);

  /// 234, 145, 0, 1
  static Color yellowText = const Color.fromRGBO(234, 145, 0, 1);

  /// 156, 157, 157, 1
  static Color lightGreyText = const Color.fromRGBO(156, 157, 157, 1);

  /// 126, 126, 126, 1
  static Color darkGreyText = const Color.fromRGBO(126, 126, 126, 1);

  /// 19, 19, 19, 1
  static Color blackText = const Color.fromRGBO(19, 19, 19, 1);

  ///76 ,122 ,84 ,1
  static Color greenText = const Color.fromRGBO(103, 180, 113, 1);

  static Color whiteText = const Color.fromRGBO(255, 255, 255, 0.9);

  static Color greyButtonBorder=const Color.fromRGBO(126, 126, 126, 0.2);

  static Color lightGreenBorder=const Color.fromRGBO(118, 212, 129, 1);

  static Color redCircle = redText;
  static Color yellowCircle = const Color.fromRGBO(255, 204, 0, 1);
  static Color greenCircle = const Color.fromRGBO(102, 204, 1, 1);
  static Color blueCircle = const Color.fromRGBO(51, 204, 255, 1);

  static Color blackButtonBorder = const Color.fromRGBO(64, 64, 64, 1);

  static Color backgroundColor = const Color.fromRGBO(73, 73, 73, 1);

  static Color borderColor = const Color.fromRGBO(238, 238, 238, 1);

  static TextStyle sidebarNormal = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(255, 255, 255, 1));
  static TextStyle sidebarHighlight = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: const Color.fromRGBO(0, 0, 0, 1));

  // Overall Status, Weather, Zone, Notice ......
  static TextStyle homeTitleTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 26.sp,
      fontWeight: FontWeight.w600
  );
}

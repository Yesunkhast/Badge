import 'package:flutter/widgets.dart';

class AppColor {
  AppColor._();
  static const Color backgroundColor = Color(0xffFAFAFA);
  static const Color appBarColor = Color(0xff17181C);
  static const Color limeColor = Color(0xffd0ff14);

  static const Gradient linearGradient = RadialGradient(
    colors: [
      Color.fromRGBO(199, 221, 133, 1),
      Color.fromRGBO(161, 144, 210, 1),
    ],
    stops: [0.0, 1.0],
    center: Alignment.center,
    radius: 1.0,
    tileMode: TileMode.clamp,
  );
}

import 'package:flutter/material.dart';

class AppColors {
  static const Color green = Color(0xFF388E3C);
  static const Color orange = Color(0xFFFF9E80);
  static const Color yellow = Color(0xFFFDD835);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  static const Color grayDark = Color(0xFF4F5962);
  static const Color grayMeduim = Color(0xFF727A81);
  static const Color grayLight = Color(0xFFA4A9AE);

  static const gradientCustom = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.5, 1.0],
    colors: [
      Color(0xFF7CB25C),
      Color(0xFF388E3C),
    ],
  );
}

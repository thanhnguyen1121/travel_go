import 'package:flutter/material.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Color primary = const Color(0xff43B97F);
  final Color pageColor = const Color(0xffF9F9F9);
  final Color black = Colors.black;
  final Color white = Colors.white;
  final Color hexF9 = const Color(0xff9E9E9E);

  late final BoxShadow shadowF9 = BoxShadow(
    color: hexF9,
    offset: const Offset(0, 4),
    blurRadius: 16,
  );

  @override
  ThemeExtension<CustomTheme> copyWith() {
    return this;
  }

  @override
  ThemeExtension<CustomTheme> lerp(
      covariant ThemeExtension<CustomTheme>? other, double t) {
    return this;
  }
}

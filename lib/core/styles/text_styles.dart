import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Poppins';

  // ignore: prefer_const_constructors
  TextStyle get textPrimaryFontRegular => TextStyle(
        fontWeight: FontWeight.normal,
        fontFamily: primaryFont,
      );
  TextStyle get textPrimaryFontMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: primaryFont,
      );
  TextStyle get textPrimaryFontBold => TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: primaryFont,
      );
}

extension TextStylesExtensions on BuildContext {
  TextStyles get colors => TextStyles.instance;
}

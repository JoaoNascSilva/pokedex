import 'package:flutter/material.dart';

class ColorsStyles {
  static ColorsStyles? _instance;

  ColorsStyles._();

  static ColorsStyles get instance {
    _instance ??= ColorsStyles._();
    return _instance!;
  }

  static const backgroundSplashColor = Color(0xff000029);

  Color get colorsAll => const Color(0xff333333);
  Color get water => const Color(0xff5090D6);
  Color get dragon => const Color(0xff0B6DC3);
  Color get eletric => const Color(0xffF4D23C);
  Color get fairy => const Color(0xffEC8FE6);
  Color get ghost => const Color(0xff5269AD);
  Color get fire => const Color(0xffFF9D55);
  Color get ice => const Color(0xff73CEC0);
  Color get gram => const Color(0xff63BC5A);
  Color get insect => const Color(0xff91C12F);
  Color get fighter => const Color(0xffCE416B);
  Color get normal => const Color(0xff919AA2);
  Color get nocturnal => const Color(0xff5A5465);
  Color get metal => const Color(0xff5A8EA2);
  Color get stone => const Color(0xffC5B78C);
  Color get psychic => const Color(0xffFA7179);
  Color get terrestrial => const Color(0xffD97845);
  Color get poisonous => const Color(0xffB567CE);
  Color get flying => const Color(0xff89AAE3);
}

extension ColorsStylesExtensions on BuildContext {
  ColorsStyles get colors => ColorsStyles.instance;
}

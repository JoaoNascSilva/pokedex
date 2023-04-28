import 'package:flutter/material.dart';
import 'package:pokedex_app/core/styles/colors_styles.dart';

class ButtonStyles {
  static ButtonStyles? _instance;

  ButtonStyles._();

  static ButtonStyles get instance {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get buttomBlue => ElevatedButton.styleFrom(
        backgroundColor: ColorsStyles.backgroundSplashColor,
      );
}

extension ButtonStylesExtensions on BuildContext {
  ButtonStyles get colors => ButtonStyles.instance;
}

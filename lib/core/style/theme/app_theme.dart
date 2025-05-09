import 'package:advanced_ecommerce/core/style/colors/colors.dark.dart';
import 'package:advanced_ecommerce/core/style/colors/colors.light.dart';
import 'package:advanced_ecommerce/core/style/theme/color_extenstion.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark],
    scaffoldBackgroundColor: ColorsDark.mainColor,
    useMaterial3: true,
  );
}

ThemeData themeLight() {
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.light],
    scaffoldBackgroundColor: ColorsLight.mainColor,
    useMaterial3: true,
  );
}

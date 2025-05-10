import 'package:advanced_ecommerce/core/style/colors/colors.dark.dart';
import 'package:advanced_ecommerce/core/style/colors/colors.light.dart';
import 'package:advanced_ecommerce/core/style/fonts/font_family_helper.dart';
import 'package:advanced_ecommerce/core/style/theme/color_extenstion.dart';
import 'package:advanced_ecommerce/core/style/theme/image_extension.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark, MyImages.dark],
    scaffoldBackgroundColor: ColorsDark.mainColor,
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.white,
        fontFamily: FontFamilyHelper.goLocalizedFontFamily(),
      ),
    ),
  );
}

ThemeData themeLight() {
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.light, MyImages.light],
    scaffoldBackgroundColor: ColorsLight.mainColor,
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsLight.black,
        fontFamily: FontFamilyHelper.goLocalizedFontFamily(),
      ),
    ),
  );
}

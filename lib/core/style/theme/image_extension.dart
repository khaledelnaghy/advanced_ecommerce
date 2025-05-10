 import 'package:advanced_ecommerce/core/style/images/app_images.dart';
 import 'package:flutter/material.dart';

class MyImages extends ThemeExtension<MyImages> {
  const MyImages({
    required this.bigNavBar,
    required this.homeBg,
  });

  final String? bigNavBar;
  final String? homeBg;

  @override
  ThemeExtension<MyImages> copyWith({
    String? bigNavBar,
    String? homeBg,
  }) {
    return MyImages(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  @override
  ThemeExtension<MyImages> lerp(
    covariant ThemeExtension<MyImages>? other,
    double t,
  ) {
    if (other is! MyImages) {
      return this;
    }
    return MyImages(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  static const MyImages dark = MyImages(
    bigNavBar: AppImages.bigIconNavBarDark,
    homeBg: AppImages.homeBgDark,
  );
  static const MyImages light = MyImages(
    bigNavBar: AppImages.bigIconNavBarLight,
    homeBg: AppImages.homeBgLight,
  );
}
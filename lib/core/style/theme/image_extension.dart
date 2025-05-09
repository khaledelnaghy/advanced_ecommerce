  import 'package:advanced_ecommerce/core/style/images/app_images.dart';
import 'package:flutter/material.dart';

class MyImages extends ThemeExtension<MyImages> {
  const MyImages({required this.testImage});
  final String? testImage;

  @override
  ThemeExtension<MyImages> copyWith({Color? mainColor}) {
    return MyImages(testImage: AppImages.backButton);
  }

  @override
  ThemeExtension<MyImages> lerp(
      covariant ThemeExtension<MyImages>? other, double t) {
    if (other is! MyImages) {
      return this;
    }
    return MyImages(testImage: AppImages.backButton);
  }

  static const MyImages dark = MyImages(testImage: AppImages.backButton);
  static const MyImages light = MyImages(testImage: AppImages.backButton);
}

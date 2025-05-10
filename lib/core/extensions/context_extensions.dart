import 'package:advanced_ecommerce/core/language/app_localizations.dart';
import 'package:advanced_ecommerce/core/style/theme/color_extenstion.dart';
import 'package:advanced_ecommerce/core/style/theme/image_extension.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  //Color
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  //images
  MyImages get assets => Theme.of(this).extension<MyImages>()!;
  
  // style
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;
//Lang
  String translate(String langKey) {
    return AppLocalizations.of(this)!.translate(langKey).toString();
  }

  Future<dynamic> pushName(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}

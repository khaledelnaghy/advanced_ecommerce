import 'package:advanced_ecommerce/core/common/screens/under_builder_screen.dart';
import 'package:advanced_ecommerce/core/routes/base_routes.dart';
import 'package:advanced_ecommerce/test_one_screen.dart';
import 'package:advanced_ecommerce/test_two_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String testOne = 'test_one';
  static const String testTwo = 'test_two';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case testOne:
        return BaseRoute(
          page: const TestOneScreen(),
        );
      case testTwo:
        return BaseRoute(
          page:const TestTwoScreen(),
        );
      default:
        return BaseRoute(
          page:const PageUnderBuildScreen(),
        );
    }
  }
}

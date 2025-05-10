import 'package:advanced_ecommerce/core/common/screens/under_builder_screen.dart';
import 'package:advanced_ecommerce/core/routes/base_routes.dart';
import 'package:advanced_ecommerce/features/auth/presentation/screens/login_screen.dart';
  import 'package:flutter/material.dart';

class AppRoutes {
  static const String login = 'login';
  static const String testTwo = 'test_two';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(
          page: const LoginScreen(),
        );
       
      default:
        return BaseRoute(
          page:const PageUnderBuildScreen(),
        );
    }
  }
}

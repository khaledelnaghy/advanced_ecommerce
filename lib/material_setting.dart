import 'package:advanced_ecommerce/core/app/connectivity_controller.dart';
import 'package:advanced_ecommerce/core/app/env.variables.dart';
import 'package:advanced_ecommerce/core/common/screens/no_network_screen.dart';
import 'package:advanced_ecommerce/core/language/app_localizations._setup.dart';
import 'package:advanced_ecommerce/core/routes/app_routes.dart';
import 'package:advanced_ecommerce/core/style/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdvancedEcommerce extends StatelessWidget {
  const AdvancedEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
              theme: themeDark(),
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(builder: (context) {
                    ConnectivityController.instance.init();
                    return widget!;
                  }),
                );
              },
              onGenerateRoute: AppRoutes.onGenerateRoute,
              initialRoute: AppRoutes.login,
              locale: Locale("en"),
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localeResolutionCallback:
                  AppLocalizationsSetup.localeResolutionCallback,
              localizationsDelegates:
                  AppLocalizationsSetup.localizationsDelegates,
            ),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}

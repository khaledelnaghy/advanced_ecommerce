import 'package:advanced_ecommerce/core/app/app_cubit/app_cubit.dart';
import 'package:advanced_ecommerce/core/app/connectivity_controller.dart';
import 'package:advanced_ecommerce/core/app/env.variables.dart';
import 'package:advanced_ecommerce/core/common/screens/no_network_screen.dart';
import 'package:advanced_ecommerce/core/di/injection_container.dart';
import 'package:advanced_ecommerce/core/language/app_localizations._setup.dart';
import 'package:advanced_ecommerce/core/routes/app_routes.dart';
import 'package:advanced_ecommerce/core/services/shared_pref/pref_keys.dart';
import 'package:advanced_ecommerce/core/services/shared_pref/shared_pref.dart';
import 'package:advanced_ecommerce/core/style/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdvancedEcommerce extends StatelessWidget {
  const AdvancedEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create: (context) => sl<AppCubit>()
              ..changeAppThemeMode(
                sharedMode: SharedPref().getBoolean(PrefKeys.themeMode),
              )..getSaveLanguage(),
            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              child: BlocBuilder<AppCubit,  AppState>(
                buildWhen: (previous , current){
                  return previous != current;

                },
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
                    theme:cubit.isDark? themeLight() : themeDark(),
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
                    locale: Locale(cubit.currentLangCode),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                  );
                },
              ),
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

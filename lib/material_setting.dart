import 'package:advanced_ecommerce/core/app/connectivity_controller.dart';
import 'package:advanced_ecommerce/core/app/env.variables.dart';
import 'package:advanced_ecommerce/core/common/screens/no_network_screen.dart';
import 'package:advanced_ecommerce/core/style/fonts/font_family_helper.dart';
import 'package:advanced_ecommerce/core/style/fonts/font_weight_hepler.dart';
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
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(builder: (context) {
                    ConnectivityController.instance.init();
                    return widget!;
                  }),
                );
              },
              home: Scaffold(
                  appBar: AppBar(),
                  body: const Center(
                    child: Column(
                      children: [
                        Text(
                          "No Network",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          " خالد الناغي ",
                          style: TextStyle(
                            fontSize: 20,
                              fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "No Network",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: FontFamilyHelper.poppinsEnglish,
                            fontWeight: FontWeightHepler.bold,
                          ),
                        ),
                        Text(
                          " خالد الناغي ",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: FontFamilyHelper.cairoArabic,
                            fontWeight: FontWeightHepler.bold,
                          ),
                        ),
                      ],
                    ),
                  )),
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

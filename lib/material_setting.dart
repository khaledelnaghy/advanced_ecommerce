import 'package:advanced_ecommerce/core/app/connectivity_controller.dart';
import 'package:advanced_ecommerce/core/app/env.variables.dart';
import 'package:advanced_ecommerce/core/common/screens/no_network_screen.dart';
import 'package:flutter/material.dart';

class AdvancedEcommerce extends StatelessWidget {
  const AdvancedEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
            builder: (context, widget) {
              return Scaffold(
                body: Builder(builder: (context) {
                  ConnectivityController.instance.init();
                  return widget!;
                }),
              );
            },
            home: const Scaffold(),
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

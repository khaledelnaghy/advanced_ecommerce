import 'package:advanced_ecommerce/core/app/env.variables.dart';
import 'package:flutter/material.dart';

class AdvancedEcommerce extends StatelessWidget {
  const AdvancedEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
      home: const Scaffold(),
    );
  }
}

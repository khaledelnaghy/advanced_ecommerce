import 'package:advanced_ecommerce/firebase_options.dart';
import 'package:advanced_ecommerce/material_setting.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  await Firebase.initializeApp();
  runApp(const AdvancedEcommerce());
}

import 'package:advanced_ecommerce/core/app/bloc_observer.dart';
import 'package:advanced_ecommerce/core/app/env.variables.dart';
import 'package:advanced_ecommerce/firebase_options.dart';
import 'package:advanced_ecommerce/material_setting.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Firebase.initializeApp();

Bloc.observer =AppBlocObserver();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  ).then((_) {
    runApp(const AdvancedEcommerce());
  });
}

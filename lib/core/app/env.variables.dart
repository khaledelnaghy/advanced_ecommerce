import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum { dev, production }

class EnvVariables {
  EnvVariables._();
  static final EnvVariables instance = EnvVariables._();

  String _envType = '';
  Future<void> init({required EnvTypeEnum envType}) async {
    switch (envType) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: '.env.dev');

      case EnvTypeEnum.production:
        await dotenv.load(fileName: '.env.production');
    }
    _envType = dotenv.get('ENV_TYPE');
  }

  bool get debugMode => _envType == 'dev';
}

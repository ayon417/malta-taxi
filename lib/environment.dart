// import 'package:firebase_core/firebase_core.dart';
// ignore_for_file: constant_identifier_names
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:malta_taxi/app.dart';
import 'package:malta_taxi/languages/codegen_loader.g.dart';
import 'package:malta_taxi/services/shared_preference_service.dart';
import 'package:malta_taxi/utils/utils.dart';

enum EnvType {
  DEVELOPMENT,
  STAGING,
  PRODUCTION,
}

class Environment {
  Environment() {
    // value = this;
    _init();
  }

  Future<void> _init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    await EasyLocalization.ensureInitialized();
    await SharedPreferenceService.init();

    try {
      //setupServiceLocator();
    } catch (e) {
      Logger.write(e.toString());
    }
    runApp(
      EasyLocalization(
        fallbackLocale: const Locale('en'),
        path: 'assets/languages',
        assetLoader: const CodegenLoader(),
        startLocale: const Locale('en'),
        supportedLocales: const [
          Locale('en'),
          Locale('de'),
        ],
        child: const ProviderScope(
          child: RootRestorationScope(
            restorationId: 'root',
            child: MyApp(),
          ),
        ),
      ),
    );
  }
}

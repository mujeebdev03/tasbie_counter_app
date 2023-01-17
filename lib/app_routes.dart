import 'package:flutter/material.dart';
import 'package:tasbie/home.dart';
import 'package:tasbie/splash.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.id: (context) => const SplashScreen(),
    Tasbeeapp.id: (context) => const Tasbeeapp(),
  };
}

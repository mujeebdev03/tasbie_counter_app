import 'package:flutter/material.dart';
import 'package:tasbie/app_routes.dart';
import 'package:tasbie/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasbee Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.id,
      routes: AppRoutes.routes,
    );
  }
}

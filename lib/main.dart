import 'package:app_prototipo_bioline/app/app_loaded.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bioline',
      //theme: buildThemeData(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadedApp(),
    );
    //return SplashScreen();
  }
}

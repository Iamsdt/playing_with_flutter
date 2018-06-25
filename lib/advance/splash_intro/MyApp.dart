/*
 * Developed by Shudipto Trafder.
 * on 6/25/18 11:36 AM.
 * Copyright (c) Shudipto Trafder.
 */

import 'package:flutter/material.dart';
import 'package:playing_with_flutter/advance/splash_intro/HomeScreen.dart';
import 'package:playing_with_flutter/advance/splash_intro/IntroScreen.dart';
import 'package:playing_with_flutter/advance/splash_intro/SplashScreen.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    "/intro": (BuildContext context) => IntroScreen(),
    "/home": (BuildContext context) => HomeScreen()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Intro",
      home: HomeScreen(),
      routes: routes,
    );
  }
}

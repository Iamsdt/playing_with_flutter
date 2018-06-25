/*
 * Developed by Shudipto Trafder.
 * on 6/25/18 7:30 PM.
 * Copyright (c) Shudipto Trafder.
 */

import 'package:flutter/material.dart';
import 'package:playing_with_flutter/practice/HomeScreen.dart';
import 'package:playing_with_flutter/practice/IntroScreen.dart';
import 'package:playing_with_flutter/practice/Routes.dart';
import 'package:playing_with_flutter/practice/SplashScreen.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    "/intro": (context) => IntroScreen(),
    "/home": (context) => HomeScreen(),
    "/routes": (context) => Routes(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Intro",
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}

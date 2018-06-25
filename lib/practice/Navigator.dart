/*
 * Developed by Shudipto Trafder.
 * on 6/25/18 7:30 PM.
 * Copyright (c) Shudipto Trafder.
 */

import 'package:flutter/material.dart';
import 'package:playing_with_flutter/practice/Details.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:playing_with_flutter/practice/HomeScreen.dart';

//used for navigation
class MyNavigator {
  static String _spName = "SpName";

  //go to home activity
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }

  static void goToHomeReplace(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/home");
  }

  //go to intro activity
  static void goToIntro(BuildContext context) {
    Navigator.pushNamed(context, "/intro");
  }

  static void toRoutes(BuildContext context) {
    Navigator.pushNamed(context, "/routes");
  }

  static void toDetails(BuildContext context, ListItem list) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailsScreen(
                  item: list,
                )));
  }

  //problem is that
  //we don't want to see intro screen every time
  // we use shared preference and save that intro is shown
  static void nextScreens(BuildContext context) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();

    bool status = sp.getBool(_spName) ?? false;

    if (status) {
      //this will replace the route (route is like activity in android)
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      Navigator.pushReplacementNamed(context, "/intro");
    }
  }

  static setIntroFinished() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setBool(_spName, true);
  }
}

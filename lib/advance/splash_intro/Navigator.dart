/*
 * Developed by Shudipto Trafder.
 * on 6/25/18 11:04 AM.
 * Copyright (c) Shudipto Trafder.
 */

import 'package:flutter/material.dart';

//used for navigation
class MyNavigator {
  //go to home activity
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }

  //go to intro activity
  static void goToIntro(BuildContext context) {
    Navigator.pushNamed(context, "/intro");
  }
}

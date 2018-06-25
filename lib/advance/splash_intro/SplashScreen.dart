/*
 * Developed by Shudipto Trafder.
 * on 6/25/18 11:29 AM.
 * Copyright (c) Shudipto Trafder.
 */

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:playing_with_flutter/advance/splash_intro/Navigator.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.orange),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(102.0),
                        color: Colors.grey.shade100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                              backgroundColor: Colors.cyanAccent,
                              radius: 96.0,
                              child: FlutterLogo(
                                colors: Colors.red,
                                size: 150.0,
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Welcome to Flutter",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    //after 2 second, show intro activity
    Timer(Duration(seconds: 1), () => MyNavigator.goToIntro(context));
  }
}

/*
 * Developed by Shudipto Trafder.
 * on 6/25/18 11:58 AM.
 * Copyright (c) Shudipto Trafder.
 */

import 'package:flutter/material.dart';
import 'package:playing_with_flutter/advance/splash_intro/Intro.dart';
import 'package:playing_with_flutter/advance/splash_intro/Navigator.dart';

class IntroScreen extends StatefulWidget {
  @override
  State createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      //we have 3 page
      if (currentPage == 4) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 3,
            child: PageView(
              children: <Widget>[
                Intro(
                  title: "Bus",
                  content: "Bus ride",
                  imageIcon: Icons.directions_bus,
                  imageColor: Colors.indigo,
                ),
                Intro(
                  title: "Car",
                  content: "Car ride",
                  imageIcon: Icons.directions_car,
                  imageColor: Colors.lightGreen,
                ),
                Intro(
                  title: "Motorcycle",
                  content: "Motorcycle ride",
                  imageIcon: Icons.motorcycle,
                  imageColor: Colors.orange,
                ),
                Intro(
                  title: "Airplane",
                  content: "Airplane ride",
                  imageIcon: Icons.airplanemode_active,
                  imageColor: Colors.purple,
                ),
                Intro(
                  title: "Train",
                  content: "Train ride",
                  imageIcon: Icons.train,
                  imageColor: Colors.brown,
                ),
              ],
              controller: controller,
              onPageChanged: _onPageChanged,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text(lastPage ? "" : "Skip",
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                  onPressed: () =>
                      lastPage ? null : MyNavigator.goToHome(context),
                ),
                FlatButton(
                  child: Text(lastPage ? "Got it" : "Next",
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                  onPressed: () => lastPage
                      ? MyNavigator.goToHome(context)
                      : controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

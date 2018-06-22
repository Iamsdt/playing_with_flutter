import 'package:flutter/material.dart';

class ImageWithAssets extends StatelessWidget {
  final String imgLink =
      "https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Playing Image From assets",
      theme: ThemeData(
        backgroundColor: Colors.grey,
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        primaryColorDark: Colors.indigo,
        accentColor: Colors.cyan[600],
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Playing Image From assets"),
          ),
          body: Center(
            child: Image(
              image: new AssetImage("assets/dart.png"),
              width: 300.0,
              height: 300.0,
            ),
          )),
    );
  }
}

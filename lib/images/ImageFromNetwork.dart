import 'package:flutter/material.dart';

class ImageFromNetwork extends StatelessWidget {

  final String imgLink = "https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true";
  final String gifImgLink = "https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Playing with Custom Font",
      theme: ThemeData(
        backgroundColor: Colors.grey,
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        primaryColorDark: Colors.indigo,
        accentColor: Colors.cyan[600],
      ),
      home: new Center(
        child: new Container(
          child: Column(
            children: <Widget>[
              Image.network(
                imgLink,width: 300.0, height: 300.0
              ),
              Image.network(
                  gifImgLink
              ,width: 300.0, height: 300.0,),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CachedImage extends StatelessWidget {
  final String imgLink =
      "https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Playing Fade Image",
        theme: ThemeData(
          backgroundColor: Colors.grey,
          brightness: Brightness.light,
          primaryColor: Colors.blue,
          primaryColorDark: Colors.indigo,
          accentColor: Colors.cyan[600],
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Playing Fade Image"),
            ),
            body:Center(
              child:new CachedNetworkImage(
                imageUrl: imgLink,
                placeholder: new CircularProgressIndicator(),
                errorWidget: new Icon(Icons.error),
              ),
            )
        )
    );
  }
}

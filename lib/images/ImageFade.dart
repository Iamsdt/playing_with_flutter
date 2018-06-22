import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageFade extends StatelessWidget {
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
            body: Stack(
              children: <Widget>[
                Center(child: CircularProgressIndicator()),
                Center(
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:
                        'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
                  ),
                ),
              ],
            )
        )
    );
  }
}

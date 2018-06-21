import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Playing with Text",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("Playing with text"),
            ),
            body: new Container(
              child: new Center(
                  child: new Column(
                children: <Widget>[
                  new Text(
                    'Example of Simple text',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                  new Container(
                    child: new RichText(
                      text: new TextSpan(
                        text: 'The example of Rich Text',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          new TextSpan(
                              text: 'bold',
                              style: new TextStyle(fontWeight: FontWeight.bold)),
                          new TextSpan(text: ' world!'),
                        ],
                      ),
                    ),
                  )
                ],
              )),
            )));
  }
}

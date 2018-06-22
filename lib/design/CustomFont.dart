import 'package:flutter/material.dart';
class CustomFont extends StatelessWidget {
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
      home: Scaffold(
          appBar: AppBar(
            title: Text("Playing with Tab"),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Default Font",style: TextStyle(
                    fontSize: 30.0,
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Roboto Font",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 30.0,
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Certificate Font",
                    style: TextStyle(
                      fontFamily: "Certificate",
                      fontSize: 30.0,
                    ),),
                ),
              ],
            ),
          )),
    );
  }
}

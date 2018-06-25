/*
 * Developed by Shudipto Trafder.
 * on 6/25/18 7:30 PM.
 * Copyright (c) Shudipto Trafder.
 */
import 'package:flutter/material.dart';
import 'package:playing_with_flutter/practice/HomeScreen.dart';

class DetailsScreen extends StatefulWidget {
  final ListItem item;

  DetailsScreen({Key key, this.item}) : super(key: key);

  @override
  _DetailsScreenState createState() {
    return new _DetailsScreenState();
  }
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Screens"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings_power),
        onPressed: () => null,
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.item.Title,
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.item.SubTitle,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.live_help,
              color: Colors.teal,
            ),
            title: Text(
              "Help",
              style: TextStyle(color: Colors.teal),
            ),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.share, color: Colors.cyan),
              title: Text("Share", style: TextStyle(color: Colors.cyan))),
          new BottomNavigationBarItem(
              icon: Icon(Icons.call, color: Colors.yellow),
              title: Text("Chat", style: TextStyle(color: Colors.yellow))),
        ],
        onTap: (int) {
          switch (int) {
            case 0:
              Scaffold
                  .of(context)
                  .showSnackBar(SnackBar(content: Text("How can I help")));
              break;
            case 1:
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text("You can share anywhare")));
              break;
            case 2:
              Scaffold
                  .of(context)
                  .showSnackBar(SnackBar(content: Text("you can call us")));
              break;
          }
        },
      ),
    );
  }
}

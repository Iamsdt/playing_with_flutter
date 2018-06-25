/*
 * Developed by Shudipto Trafder.
 * on 6/25/18 12:41 PM.
 * Copyright (c) Shudipto Trafder.
 */

import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = List<_ListItem>.generate(
      20, (i) => _ListItem("Title: $i", "Subtitle: $i"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main App"),
        actions: <Widget>[],
      ),
      drawer: Drawer(
        child: ListView(
          addRepaintBoundaries: true,
          padding: EdgeInsets.zero,
          children: <Widget>[
            getDrawerHeader(),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Bookmark'),
              onTap: () {
                // Update the state of the app
                // ...

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Routes'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.pop(context);
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0, left: 8.0),
              decoration:
                  BoxDecoration(border: new Border(bottom: new BorderSide())),
              child: ListTile(
                title: Text('Settings'),
              ),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Choose Theme'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: new Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return CardView(items[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () => {},
        child: Icon(Icons.add_circle_outline, size: 32.0, color: Colors.white),
      ),
    );
  }

  getDrawerHeader() {
    return DrawerHeader(
      duration: Duration(seconds: 1),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.cyanAccent,
                  radius: 32.0,
                  child: FlutterLogo(
                    colors: Colors.red,
                    size: 50.0,
                  )),
              Text(
                "Main App Title",
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
              Text(
                "Subtitle goes here",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w100),
              )
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    );
  }
}

class _ListItem {
  dynamic Title;
  dynamic SubTitle;
  _ListItem(this.Title, this.SubTitle);
}

class CardView extends StatelessWidget {
  final _ListItem item;

  CardView(this.item);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Container(
        color: getRandomColor(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                getRandomIcon(),
                size: 32.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.Title,
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    Text(
                      item.SubTitle,
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  getRandomIcon() {
    var random = new Random();
    var list = [
      Icons.info,
      Icons.wifi,
      Icons.insert_emoticon,
      Icons.airplanemode_active,
      Icons.airport_shuttle,
      Icons.alarm,
      Icons.chat,
      Icons.data_usage,
      Icons.nature_people,
      Icons.adjust,
      Icons.brush,
      Icons.chat_bubble,
    ];

    var number = random.nextInt(list.length - 1);

    return list[number];
  }

  getRandomColor() {
    var random = new Random();
    var list = [
      Colors.grey,
      Colors.amberAccent,
      Colors.indigoAccent,
      Colors.blueAccent,
      Colors.greenAccent,
      Colors.lime,
      Colors.redAccent,
      Colors.pinkAccent,
      Colors.purpleAccent,
      Colors.yellow,
      Colors.lightGreenAccent,
      Colors.lightBlueAccent,
      Colors.cyanAccent,
      Colors.white70
    ];

    var number = random.nextInt(list.length - 1);

    return list[number];
  }
}

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
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              duration: Duration(seconds: 1),
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
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
}

class _ListItem {
  dynamic Title;
  dynamic SubTitle;
  _ListItem(this.Title, this.SubTitle);
}

class CardView extends StatelessWidget {
  final _ListItem Item;

  CardView(this.Item);

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
                      Item.Title,
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    Text(
                      Item.SubTitle,
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

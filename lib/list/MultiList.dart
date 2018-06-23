import 'package:flutter/material.dart';

class MultiList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'MultiList';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[Text("Section 1"), getHorizontalList()],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[Text("Section 2"), getHorizontalList()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  getHorizontalList() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 160.0,
          color: Colors.red,
        ),
        Container(
          width: 160.0,
          color: Colors.blue,
        ),
        Container(
          width: 160.0,
          color: Colors.green,
        ),
        Container(
          width: 160.0,
          color: Colors.yellow,
        ),
        Container(
          width: 160.0,
          color: Colors.orange,
        ),
      ],
    );
  }
}

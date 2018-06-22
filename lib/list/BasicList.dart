import 'package:flutter/material.dart';


class BasicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final title = 'Basic List';

    final style = new TextStyle(fontSize: 20.0);

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map',style: style,),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album',style: style,),
            ),
            ListTile(
              leading: Icon(Icons.wifi),
              title: Text('Wifi',style: style,),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone',style: style,),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings',style: style,),
            ),
            ListTile(
              leading: Icon(Icons.live_tv),
              title: Text('Live Tv',style: style,),
            ),
            ListTile(
              leading: Icon(Icons.print),
              title: Text('Print',style: style,),
            ),
          ],
        ),
      ),
    );
  }
}
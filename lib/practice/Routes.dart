/*
 * Developed by Shudipto Trafder.
 * on 6/25/18 6:22 PM.
 * Copyright (c) Shudipto Trafder.
 */
import 'package:flutter/material.dart';

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Routes"),
          bottom: TabBar(
            indicatorColor: Colors.orange,
            tabs: <Widget>[
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.train),
              Icon(Icons.airplanemode_active),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.train),
            Icon(Icons.airplanemode_active),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: Text('You are in details Screens'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Some code to undo the change!
                },
              ),
            );

            // Find the Scaffold in the Widget tree and use it to show a SnackBar!
            Scaffold.of(context).showSnackBar(snackBar);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

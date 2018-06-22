import 'package:flutter/material.dart';
import 'package:playing_with_flutter/design/SnackBarDemoAgain.dart';

class TabDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Playing with Snackbar",
        theme: ThemeData(
          backgroundColor: Colors.grey,
          brightness: Brightness.light,
          primaryColor: Colors.blue,
          primaryColorDark: Colors.indigo,
          accentColor: Colors.cyan[600],
        ),
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Playing with Tab"),
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
            floatingActionButton: SnackBarPage(),
          ),
        )
    );
  }

}

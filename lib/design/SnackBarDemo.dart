import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
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
        home: Scaffold(
          appBar: AppBar(
            title: Text("Snackbar Demo"),
          ),
          body: SnackBarPage(),
        ));
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
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
        child: Text('Show SnackBar'),
      ),
    );
  }
}

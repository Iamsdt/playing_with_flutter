import 'package:flutter/material.dart';

class SnackBarDemoAgain extends StatelessWidget {
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
            title: Text("Snackbar Demo Again"),
          ),
          body: Center(
            child: Text("Playing with SnackBar, this time with \n"
                "Floating Action Button"),
          ),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat,
          floatingActionButton: SnackBarPage(),
        ));
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FloatingActionButton(
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
          child: Icon(Icons.add),
        ),
    );
  }
}

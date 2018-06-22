import 'package:flutter/material.dart';
import 'package:playing_with_flutter/utils.dart';

class StyleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Playing with Style",
      theme: ThemeData(
        backgroundColor: Colors.grey,
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        primaryColorDark: Colors.indigo,
        accentColor: Colors.cyan[600],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Style Demo"),
        ),
        body: Center(
          child: Container(
            color: Theme.of(context).accentColor,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Text with a background color',
                style: Theme.of(context).textTheme.title,
              ),
            )
          ),
        ),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.purple),
          child: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
          ),
        ),
      )
    );
  }

  //example of an unique theme
  createTheme() {
    return Theme(
      data: ThemeData(
        backgroundColor: Colors.grey,
        brightness: Brightness.dark,
        primaryColor: Colors.blue,
        primaryColorDark: Colors.indigo,
        accentColor: Colors.cyan[600],
      ),
      child: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }

  //Extending of current theme
  extendTheme(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.pink),
        child: FloatingActionButton(onPressed: null, child: Icon(Icons.add)));
  }
}

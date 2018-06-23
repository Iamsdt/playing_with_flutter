import 'package:flutter/material.dart';

getAppBar(String s) {
  return AppBar(
    title: Text(s),
  );
}

getFab(BuildContext context) {
  return FloatingActionButton(
    backgroundColor: Colors.pink,
    child: Icon(Icons.add),
    onPressed: () {
      Scaffold.of(context).showSnackBar(getSnackBar());
    },
  );
}

getSnackBar([String text = "Yay! A SnackBar!", String label = "undo"]) {
  return SnackBar(
    content: Text(text),
    action: SnackBarAction(
      label: label,
      onPressed: () {
        // Some code to undo the change!
      },
    ),
  );
}

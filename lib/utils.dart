import 'package:flutter/material.dart';

getScaffold(){
  return new Scaffold(
    appBar: AppBar(
      title: Text("Playing with flutter"),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: null,
      child: Icon(Icons.add)
    ),
    body: new Center(
      child: Text("Playing with flutter"),
    ),
  );
}

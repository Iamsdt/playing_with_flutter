import 'package:flutter/material.dart';
import 'package:playing_with_flutter/utils/Extension.dart';

/*
  Use two screen
 */

class NavigatorBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: FirstClass(),
    );
  }
}

class FirstClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: getAppBar("First Screen"),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //second screen
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondClass()));
          },
          child: Text("Second Screen"),
        ),
      ),
      floatingActionButton: getFab(context),
    );
  }
}

class SecondClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: getAppBar("Second Screen"),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              //First screen
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => FirstClass()));
            },
            child: Text("Go back"),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: getItem(),
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
        ));
  }

  List<BottomNavigationBarItem> getItem() {
    List<BottomNavigationBarItem> items = [];
    items.add(
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("List")));
    items.add(
        BottomNavigationBarItem(icon: Icon(Icons.print), title: Text("Print")));
    items.add(BottomNavigationBarItem(
        icon: Icon(Icons.bookmark), title: Text("Bookmark")));
    return items;
  }
}

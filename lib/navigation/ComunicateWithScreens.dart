import 'package:flutter/material.dart';
import 'package:playing_with_flutter/utils/Extension.dart';

class CommunicateWithScrees extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = new List<Todo>.generate(20, (int) {
      return Todo("Todo: $int", "A description of Todo: $int");
    });

    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: getAppBar("Todo App"),
        floatingActionButton: getFab(context),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${list[index].title}"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                              todo: list[index],
                            )));
              },
            );
          },
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final Todo todo;
  DetailsScreen({Key key, this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar("Task Details"),
      floatingActionButton: getFab(context),
      body: Center(
        child: new Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                todo.title,
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                todo.description,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

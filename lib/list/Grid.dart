import 'package:flutter/material.dart';
import 'package:playing_with_flutter/utils/Extension.dart';
import 'dart:math';

//todo post in blog

class GridList extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Material App",
      home: Scaffold(
          appBar: getAppBar("Playing with GridView"),
          floatingActionButton: getFab(context),
          body: OrientationBuilder(
            builder: (context, orientation) {
              return GridView.builder(
                  itemCount: items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          orientation == Orientation.portrait ? 2 : 3),
                  itemBuilder: (context, index) {
                    return Container(
                      color: getRandomColor(),
                      child: Center(
                        child: ListTile(
                          title: Text(items[index]),
                          onTap: () {
                            Scaffold
                                .of(context)
                                .showSnackBar(getSnackBar("position:$index"));
                          },
                        ),
                      ),
                    );
                  });
            },
          )),
    );
  }

  getRandomColor() {
    var random = new Random();
    var list = [
      Colors.orange,
      Colors.amber,
      Colors.indigo,
      Colors.blue,
      Colors.green,
      Colors.lime,
      Colors.red,
      Colors.brown,
      Colors.deepOrange,
      Colors.deepPurple,
      Colors.pink,
      Colors.purple,
      Colors.yellow,
    ];

    var number = random.nextInt(list.length - 1);

    return list[number];
  }
}

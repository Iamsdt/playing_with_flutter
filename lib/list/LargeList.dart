import 'package:flutter/material.dart';
import 'package:playing_with_flutter/utils/Extension.dart';

class LargeList extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: getAppBar("Playing with large List"),
        floatingActionButton: getFab(context),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
              onTap: () {
                Scaffold
                    .of(context)
                    .showSnackBar(getSnackBar("position:$index"));
              },
            );
          },
        ),
      ),
    );
  }
}

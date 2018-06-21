import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Scanford",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Playing with text"),
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.playlist_play,color: Colors.orange,),
                tooltip: 'Air it',
                onPressed: null,
              ),
              new IconButton(
                icon: new Icon(Icons.playlist_add,color: Colors.purple,),
                tooltip: 'Restitch it',
                onPressed: null,
              ),
              new IconButton(
                icon: new Icon(Icons.playlist_add_check,color: Colors.red,),
                tooltip: 'Repair it',
                onPressed: null,
              ),
            ],
          ),
          body: new Container(
              child: new Center(
            child: new Text("Example of scanford"),
          )),
          floatingActionButton: new FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.pink,
            child: new Icon(Icons.add),
            isExtended: true,
          ),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat,
          bottomNavigationBar: new BottomNavigationBar(

              items: [
                new BottomNavigationBarItem(
                  icon: Icon(Icons.live_help,color: Colors.teal,),
                  title: Text("Help",style: TextStyle(color: Colors.teal),),
                ),
                new BottomNavigationBarItem(
                    icon: Icon(Icons.share,color: Colors.cyan),
                    title: Text("Share",style: TextStyle(color: Colors.cyan))
                ),
                new BottomNavigationBarItem(
                    icon: Icon(Icons.chat,color: Colors.yellow),
                    title: Text("Chat",style: TextStyle(color: Colors.yellow))
                ),
              ],
            ),
          )
          );
  }
}

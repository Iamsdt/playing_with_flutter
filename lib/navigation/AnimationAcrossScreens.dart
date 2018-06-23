import 'package:flutter/material.dart';

class AnimationAcrossScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          }));
        },
        child: Hero(
          tag: "Image",
          child: Image(
            image: new AssetImage("assets/dart.png"),
            width: 300.0,
            height: 300.0,
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: "Image",
            child: Image(
              image: new AssetImage("assets/dart.png"),
              width: 300.0,
              height: 300.0,
            ),
          ),
        ),
      ),
    );
  }
}

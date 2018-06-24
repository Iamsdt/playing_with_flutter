import 'package:flutter/material.dart';

//todo post

class LoginFrom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: _Login(),
    );
  }
}

class _Login extends StatefulWidget {
  @override
  State createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<_Login> {
  double borderValue = 32.0;

  @override
  Widget build(BuildContext context) {
    //logo
    final logo = CircleAvatar(
      child: Image.asset(
        "assets/dart.png",
        width: 92.0,
        height: 92.0,
      ),
      backgroundColor: Colors.grey,
      radius: 72.0,
    );

    final email = TextFormField(
      initialValue: "Someone@mail.com",
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          hintText: "Write your Email Address",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderValue))),
    );

    final pass = TextFormField(
      initialValue: "Password",
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderValue))),
    );

    final loginBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 24.0),
      child: Material(
        borderRadius: BorderRadius.circular(borderValue),
        shadowColor: Colors.blue.shade400,
        elevation: 5.0,
        child: MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            color: Colors.lightBlueAccent,
            child: Text('Log In', style: TextStyle(color: Colors.white)),
            onPressed: () {}),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarOpacity: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            pass,
            SizedBox(height: 24.0),
            loginBtn,
            forgotLabel
          ],
        ),
      ),
    );
  }
}

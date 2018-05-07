import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: null,
      body: new SizedBox.expand(
          child: new Container(
            decoration: new BoxDecoration(color: Colors.blue[400]),
            child: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Icon(Icons.airport_shuttle, size: 62.0, color: Colors.white70,),
                  new Text('Plantter', style: new TextStyle(fontSize: 38.0, color: Colors.white)),

                ],
              ),
            ),
          ),

      ),
      bottomNavigationBar: null,
    );
  }
}

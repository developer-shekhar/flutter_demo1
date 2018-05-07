import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:plantter_dev/login/login.dart';

void main(){
  //make app full screen by hiding status and navigation bar
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(new MaterialApp(
    title: 'My Material App',
    home: new LoginScreen()
  ));
  
}
/* add bottom tabbar navigation
https://stackoverflow.com/questions/45235570/how-to-use-bottomnavigationbar-with-navigator*/
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: null,
      body: new Center(
        child: new RaisedButton(
          child: new Text('Launch new screen'),
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new SecondScreen()),
            );
          },
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(
            icon: new Icon(Icons.home), title: new Text('Home')
        ),
        new BottomNavigationBarItem(
            icon: new Icon(Icons.alarm),
            title: new Text('Alarm')
        ),
      ]),

    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Screen"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text('Go back!'),
        ),
      ),
    );
  }
}

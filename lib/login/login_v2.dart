import 'package:flutter/material.dart';
import 'package:plantter_dev/post_item.dart';

class LoginV2 extends StatefulWidget {
  @override
  _LoginV2State createState() => new _LoginV2State();
}

class _LoginV2State extends State<LoginV2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new PostItem(),
              new PostItem(
                  imgSrc:
                      "https://s.tmimgcdn.com/blog/wp-content/uploads/2016/04/1-9-2.jpg?x56506"),
              new PostItem(),
            ],
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => {},
        child: new Icon(Icons.add),
      ),
    );
  }
}

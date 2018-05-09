import 'package:flutter/material.dart';
import 'package:plantter_dev/localization/eng_locals.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              end: Alignment.topLeft,
              begin: Alignment.bottomRight,
              colors: [
                Colors.deepPurple[300],
                Colors.blue[300],
                Colors.deepPurple
              ]),
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: new Container(
                child: new Center(
                  child: new Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Icon(
                          Icons.alarm,
                          size: 122.0,
                          color: Colors.white,
                        ),
                        new Text(
                          'Flutter App',
                          style: new TextStyle(
                            fontSize: 32.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            new Expanded(
              flex: 3,
              child: new Container(
                child: new Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: new Container(
                    decoration: new BoxDecoration(
                        /*border: new Border.all(
                        color: Colors.deepPurple,
                        style: BorderStyle.solid,
                        width: 0.0,
                      ),*/
                        ),
                    child: new Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0, bottom: 12.0, left: 22.0, right: 22.0),
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: new Text(
                              EngLocals.localizedValue['login_heading'],
                              style: new TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          new TextFormField(
                            autocorrect: false,
                            keyboardType: TextInputType.emailAddress,
                            style: new TextStyle(
                                color: Colors.white, fontSize: 18.0),
                            decoration: new InputDecoration(
                              contentPadding:
                                  new EdgeInsets.symmetric(vertical: 18.0),
                              hintStyle: new TextStyle(color: Colors.white70),
                              hintText: 'Email',
                              icon: new Icon(
                                Icons.email,
                                color: Colors.white70,
                              ),
                              border: new UnderlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.white,
                                    width: 2.0,
                                    style: BorderStyle.solid),
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: new TextFormField(
                              obscureText: true,
                              autocorrect: false,
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                              decoration: new InputDecoration(
                                contentPadding:
                                    new EdgeInsets.symmetric(vertical: 18.0),
                                hintText: 'Password',
                                hintStyle: new TextStyle(color: Colors.white70),
                                icon: new Icon(Icons.enhanced_encryption,
                                    color: Colors.white70),
                                border: new UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                      color: Colors.white,
                                      width: 2.0,
                                      style: BorderStyle.solid),
                                ),
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.symmetric(vertical: 18.0),
                            child: new SizedBox(
                              width: double.infinity,
                              child: new RaisedButton(
                                color: Colors.deepPurple,
                                onPressed: () => {},
                                padding:
                                    new EdgeInsets.symmetric(vertical: 12.0),
                                child: new Text(
                                  'SUBMIT',
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

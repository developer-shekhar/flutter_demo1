import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  PostItem(
      {this.imgSrc =
          "https://cdn.dribbble.com/users/106596/screenshots/2269537/thumbnail-materialdesign_1x.jpg"});

  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new ListTile(
              leading: new CircleAvatar(
                child: new Text('SH'),
              ),
              title: new Text('Shashi Shekhar'),
              subtitle: new Text('Technoscore.net'),
            ),
            new Image.network(
              imgSrc,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200.0,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 18.0),
              child: new Text(
                  "Multiline text describing the content of this image" +
                      "Multiline text describing the content of this image." +
                      "Multiline text describing the content of this image."),
            ),
            new Align(
              alignment: Alignment.bottomRight,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new IconButton(
                    icon: new Icon(Icons.favorite_border),
                    onPressed: () => {},
                  ),
                  new IconButton(
                    icon: new Icon(Icons.share),
                    onPressed: () => {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

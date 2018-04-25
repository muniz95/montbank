import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: new Text('Home'),
        ),
      ]
    );
  }
}
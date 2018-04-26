import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 100.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Text('Saldo'),
              new Text('R\$ 200,00', style: new TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
          new Column(
            children: <Widget>[
              new Text('Lançamentos futuros'),
              new Text('Lançamentos futuros'),
            ],
          ),
        ],
      )
    );
  }
}
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
              new FlatButton(
                child: new Text(
                  'R\$ 200,00',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                onPressed: () {
                  showDialog(context: context, builder: (BuildContext context) {
                    return new AlertDialog(
                      title: new Text('Saldos'),
                      content: new Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text('Saldo: R\$: 200,00'),
                          new Text('Limite: R\$: 100,00'),
                        ],
                      )
                    );
                  }
                );
              }),
            ],
          ),
          new Column(
            children: <Widget>[
              new Text('Lançamentos futuros'),
              new FlatButton(
                child: new Text(
                  'R\$ 200,00',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                onPressed: () {
                  showDialog(context: context, builder: (BuildContext context) {
                    return new AlertDialog(
                      title: new Column(
                        children: <Widget>[
                          new Text('Lançamentos futuros')
                        ],
                      ),
                      content: new Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text('21/01/17: R\$: 200,00'),
                          new Text('21/01/17: R\$: 200,00'),
                          new Text('21/01/17: R\$: 200,00'),
                        ],
                      ),
                    );
                  }
                );
              }),
            ],
          ),
        ],
      )
    );
  }
}
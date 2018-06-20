import 'package:flutter/material.dart';

class SavingsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 1.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text('Poupança'),
          const Text('Gastos'),
          const Text('Rendimento'),
        ],
      ),
    );
  }

}
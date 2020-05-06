import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Tem dado em casa'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int esquerda = 1;
  int direita = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          buildExpanded(esquerda),
          buildExpanded(direita),
        ],
      ),
    );
  }

  Expanded buildExpanded(int lado) {
    return Expanded(
      child: FlatButton(
        child: Image.asset('images/dice$lado.png'),
        onPressed: () {
          setState(() {
            esquerda = Random().nextInt(6) + 1;
            direita = Random().nextInt(6) + 1;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
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
  int leftDiceNumber = 1, rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(6) + 1;
                print('diceNumber=$leftDiceNumber');
              });
            },
          )),
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: () {
              setState(() {
                rightDiceNumber = Random().nextInt(6) + 1;
                print('diceNumber=$rightDiceNumber');
              });
            },
          )
          )
        ],
      ),
    );
  }
}

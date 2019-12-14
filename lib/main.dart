import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Randomizer'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = _getRandomDice();
  int right = _getRandomDice();

  static int _getRandomDice() {
    return Random.secure().nextInt(6) + 1;
  }

  void _randomize() {
    setState(() {
      left = _getRandomDice();
      right = _getRandomDice();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$left.png'),
                onPressed: () {
                  _randomize();
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$right.png'),
                onPressed: () {
                  _randomize();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

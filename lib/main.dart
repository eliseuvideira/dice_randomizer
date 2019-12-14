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

  Widget _buildDice(int number) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset('images/dice$number.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('detected');
        _randomize();
      },
      child: Container(
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildDice(left),
              _buildDice(right),
            ],
          ),
        ),
      ),
    );
  }
}

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice1.png'),
                onPressed: () {
                  print('Left button got pressed.');
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice1.png'),
                onPressed: () {
                  print('Right button got pressed.');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

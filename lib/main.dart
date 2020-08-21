import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.white30,
            appBar: AppBar(
              title: Text("Boss Level App"),
              backgroundColor: Colors.white10,
            ),
            body: BossLevel(),
          )
      )
  );
}

class BossLevel extends StatefulWidget {
  @override
  _BossLevelPageState createState() => _BossLevelPageState();
}

class _BossLevelPageState extends State<BossLevel> {
  int leftDiceNumber = 1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$leftDiceNumber.png'),
              )
          ),
        ] ,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Dice Roll"),
        centerTitle: true,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  var leftNumber = 1;
  var rightNumber = 2;

  void chnageNumber()
  {
    setState(() {
      rightNumber = Random().nextInt(6) + 1;
      leftNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {



    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                chnageNumber();
              },
              child: Image(
                image: AssetImage('assets/dice$leftNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                chnageNumber();
              },
              child: Image(
                image: AssetImage('assets/dice$rightNumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}




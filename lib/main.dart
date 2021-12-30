import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.deepOrangeAccent,
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
  int dice1 = 1;
  int dice2 = 2;
  int dice3 = 3;
  int dice4 = 4;
  int dice5 = 5;
  int dice6 = 6;

  void changeDiceFace() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
      dice3 = Random().nextInt(6) + 1;
      dice4 = Random().nextInt(6) + 1;
      dice5 = Random().nextInt(6) + 1;
      dice6 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          const SizedBox(height: 50,),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$dice1.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset('images/dice$dice2.png'),
                  onPressed: () {
                    changeDiceFace();
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$dice3.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset('images/dice$dice4.png'),
                  onPressed: () {
                    changeDiceFace();
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$dice5.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset('images/dice$dice6.png'),
                  onPressed: () {
                    changeDiceFace();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

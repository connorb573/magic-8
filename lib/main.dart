import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.blue[700],
          ),
          body: MagicEight(),
        ),
      ),
    );

class MagicEight extends StatefulWidget {
  @override
  _MagicEightState createState() => _MagicEightState();
}

class _MagicEightState extends State<MagicEight> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}

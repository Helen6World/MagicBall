import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[200],
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me Anything'),
          ),
          backgroundColor: Colors.cyanAccent[600],
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int randomPhotoNumber = 1;
  void setRandomPhotoNumber() {
    setState(() {
      randomPhotoNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setRandomPhotoNumber();
            },
            child: Image.asset('images/ball$randomPhotoNumber.png'),
          ),
        ),
      ],
    );
  }
}

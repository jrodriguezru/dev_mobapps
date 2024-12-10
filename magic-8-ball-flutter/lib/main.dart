import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: ballPage(),
      ),
    );

class ballPage extends StatelessWidget {
  const ballPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text(
          'Ask Me anything',
        ),
      ),
      body: Container(
        child: ball(),
      ),
    );
  }
}

class ball extends StatefulWidget {
  const ball();

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/ball$ballNum.png'),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                ballNum = Random().nextInt(5) + 1;
              });
            },
            child: Text(
              'Try Again',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

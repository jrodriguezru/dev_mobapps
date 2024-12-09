import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme(
            brightness: Brightness.dark,
            primary: Colors.lightBlueAccent,
            onPrimary: Colors.white,
            secondary: Color(0xFF0A0E21),
            onSecondary: Colors.white,
            error: Color(0xFF0A0E21),
            onError: Colors.white,
            surface: Color(0xFF0A0E21),
            onSurface: Colors.white),
      ),
      home: InputPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'inputpage.dart';
void main() {
  runApp(BMICAL());

}

class BMICAL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21)
      ),
      home: InputPage(),
    );
  }
}


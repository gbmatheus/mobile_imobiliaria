import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text(
          'Index 2: List',
          style: TextStyle(
              color: Colors.purple, fontFamily: 'Montserrat', fontSize: 20.0),
        ),
      ),
    );
  }
}

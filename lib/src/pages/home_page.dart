import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      body: Center(
        child: Text('Seja bem vindo ao mundo temático do IMOBE\n\nCasa engraçada, sem teto\nSem nada, niguém pode entrar\nLocalizada na Rua dos Bobos, 0',
        style: TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 20.0),),
      ),
      // resizeToAvoidBottomInset: false,
    );
  }
}
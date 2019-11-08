import 'package:flutter/material.dart';
import 'package:imobe_app/src/components/app_tab_bar.dart';
import 'package:imobe_app/src/components/bottom_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;

  List<Widget> widgetOption = <Widget>[
    Text(
      'Index 0: ADD',
      style: TextStyle(
          color: Colors.purple, fontFamily: 'Montserrat', fontSize: 20.0),
    ),
    Text(
      'Seja bem vindo ao mundo temático do IMOBE\n\nCasa engraçada, sem teto\nSem nada, niguém pode entrar\nLocalizada na Rua dos Bobos, 0',
      style: TextStyle(
          color: Colors.purple, fontFamily: 'Montserrat', fontSize: 20.0),
    ),
    Text(
      'Index 2: List',
      style: TextStyle(
          color: Colors.purple, fontFamily: 'Montserrat', fontSize: 20.0),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
              indicatorColor: Colors.purple,
              labelColor: Colors.purple,
              unselectedLabelColor: Colors.purple[200],
              labelStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.people),
                  text: 'Funcionário',
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Imóveis',
                ),
              ]),
          // ),
          // backgroundColor: Colors.purple[300],
          body: Center(child: widgetOption[1]),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}

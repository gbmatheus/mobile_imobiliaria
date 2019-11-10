import 'package:flutter/material.dart';
import 'package:imobe_app/src/pages/home_page.dart';
import 'package:imobe_app/src/pages/register_page.dart';

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  int _selectedIndex = 1;

  static List<Widget> _widgetOption = <Widget>[
    //Add
    RegisterPage(),
    //Home
    HomePage(),
    //List
    Text(
      'Index 2: List',
      style: TextStyle(
          color: Colors.purple, fontFamily: 'Montserrat', fontSize: 20.0),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: 100.0,
        child: _widgetOption.elementAt(_selectedIndex),      
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), title: Text('Cadastro')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text('Imóveis')),
        ],
        backgroundColor: Colors.purple,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Color.fromRGBO(250, 250, 250, 1.0),
        onTap: _onItemTapped,
      ),
    );
  }
}

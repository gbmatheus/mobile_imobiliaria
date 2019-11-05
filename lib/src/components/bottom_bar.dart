import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline), title: Text('Cadastro')),
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('Imóveis')),
      ],
      backgroundColor: Colors.purple,
      currentIndex: _selectedIndex,
      unselectedItemColor: Colors.white70,
      selectedItemColor: Color.fromRGBO(250, 250, 250, 1.0),
      onTap: _onItemTapped,
    );
  }
}

import 'package:flutter/material.dart';

class AppTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
        indicatorColor: Colors.purple[300],
        labelColor: Colors.purple,
        unselectedLabelColor: Colors.purple,
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.add_to_home_screen),
          ),
          Tab(
            icon: Icon(Icons.person_add),
          ),
          Tab(
            icon: Icon(Icons.tv),
          ),
          Tab(
            text: 'Alô',
          )
        ]);
    // ),
  }
}

class TabBarCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
        indicatorColor: Colors.purple[300],
        labelColor: Colors.purple,
        unselectedLabelColor: Colors.purple,
        labelStyle: TextStyle(fontSize: 20.0),
        tabs: <Widget>[
          Tab(
            text: 'Funcionário',
          ),
          Tab(
            text: 'Imóveis',
          ),
        ]);
  }
}

class TabBarServico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
        indicatorColor: Colors.purple,
        labelColor: Colors.purple,
        unselectedLabelColor: Colors.purple[300],
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.shopping_cart),
          ),
          Tab(
            icon: Icon(Icons.person_add),
          ),
          Tab(
            icon: Icon(Icons.tv),
          ),
          Tab(
            text: 'Alô',
          )
        ]);
  }
}

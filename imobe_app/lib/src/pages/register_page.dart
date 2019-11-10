import 'package:flutter/material.dart';
import 'package:imobe_app/src/components/tab_view_item.dart' as TabItem;

class RegisterPage extends StatefulWidget {
  static const index = 1;

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                text: 'Corretor',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Imóvel',
              ),
            ]),
        body: TabBarView(
          children: <Widget>[
            TabItem.TabItemCorretor(),
            TabItem.TabItemImovel()
          ],
        ),
      ),
    ));
  }
}

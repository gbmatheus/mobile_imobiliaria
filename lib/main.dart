import 'package:flutter/material.dart';
import 'package:imobe_app/src/pages/login_page.dart';
import 'package:imobe_app/src/pages/home_page.dart';

void main() => runApp(
  MaterialApp(
    title: 'Imobe',
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.purple
    ),
    home: Scaffold(
      body: LoginPage(),
    ),
    routes: <String, WidgetBuilder> {
      '/home': (BuildContext context) => HomePage(),
      '/login': (BuildContext context) => LoginPage(),
    }
  )

);

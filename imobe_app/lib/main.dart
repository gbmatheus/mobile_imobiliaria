import 'package:flutter/material.dart';
import 'package:imobe_app/src/pages/home_page.dart';
import 'package:imobe_app/src/pages/login_page.dart';
import 'package:imobe_app/src/pages/login_signup_page.dart';
import 'package:imobe_app/src/pages/signup_page.dart';
import 'package:imobe_app/src/pages/forgot_page.dart';

final Color colorWhite = Color.fromRGBO(250, 250, 250, 1.0);

void main() => runApp(
  MaterialApp(
    title: 'Imobe',
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      fontFamily: 'Montserrat'
    ),
    home: Scaffold(
      // body: LoginSignUpPage(),
      body: LoginPage(),
    ),
    routes: <String, WidgetBuilder> {
      '/home': (BuildContext context) => HomePage(),
      '/login': (BuildContext context) => LoginPage(),
      '/signup': (BuildContext context) => SignUpPage(),
      '/forgot': (BuildContext context) => ForgotPage(),
    },
  )

);

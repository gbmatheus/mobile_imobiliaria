import 'package:flutter/material.dart';
import 'package:imobe_app/src/pages/home_page.dart';
import 'package:imobe_app/src/pages/imovel_detail_page.dart';
import 'package:imobe_app/src/pages/login_page.dart';
import 'package:imobe_app/src/pages/principal_page.dart';
import 'package:imobe_app/src/pages/register_page.dart';
import 'package:imobe_app/src/pages/signup_page.dart';
import 'package:imobe_app/src/pages/forgot_page.dart';

final Color colorWhite = Color.fromRGBO(250, 250, 250, 1.0);

void main() {
  runApp(
    MaterialApp(
      title: 'Imobe',
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.purple,
          fontFamily: 'Montserrat'),
      home: ImobeApp(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LoginPage(),
        '/signup': (BuildContext context) => SignUpPage(),
        '/forgot': (BuildContext context) => ForgotPage(),
        '/home': (BuildContext context) => HomePage(),
        '/register': (BuildContext context) => RegisterPage(),
        '/principal': (BuildContext context) => PrincipalPage(),
        '/detail-imovel/': (BuildContext context) => ImovelDetailPage(),
      },
    ),
  );
}

class ImobeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ImovelDetailPage(),
    );
  }
}
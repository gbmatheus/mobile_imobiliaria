import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//Imagem logo
                Container(
                  padding: const EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 20.0),
                  child: Image.asset(
                    'assets/logo_1.png',
                    height: 150.0,
                    fit: BoxFit.fill,
                  ),
                ),
//Campo Email
                Container(
                  padding: const EdgeInsets.only(
                     left: 20.0, right: 20.0, bottom: 20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.purple,
                    decoration: InputDecoration(
                        filled: true,
                        labelText: 'E-mail',
                        labelStyle: TextStyle(fontSize: 16.0)),
                  ),
                ),
//Campo senha
                Container(
                  padding: const EdgeInsets.only(
                     left: 20.0, right: 20.0, bottom: 20.0),
                  child: TextFormField(
                    cursorColor: Colors.purple,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Senha',
                      labelStyle: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
//Botão Entrar
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: RaisedButton(
                      child: Text(
                        'Entrar',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                      color: Colors.purple,
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                    ),
                  ),
                // ),
//Botao esqueceu senha
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                    child: FlatButton(
                      child: Text(
                        'Esqueceu a senha?',
                        style: TextStyle(color: Colors.purple, fontSize: 14.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                // )
              ],
            ),
          // ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imobe_app/src/base/image_base.dart';
import 'package:imobe_app/src/base/input_field_base.dart' as InputTF;
import 'package:imobe_app/src/base/raised_button_base.dart' as RaisedBtn;
import 'package:imobe_app/src/base/flat_button_base.dart' as FlatBtn;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() {
    var loginPageState = _LoginPageState();
    return loginPageState;
  }
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String _email;
  String _senha;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 10.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                LogoImage(),
                InputTF.InputTextField(
                  label: 'Email',
                  icon: Icon(Icons.mail, color: Colors.purple,),
                  save: (value) =>
                      {_email = value.trim(), print('Email $_email')},
                  valid: (value) =>
                      value.trim().isEmpty ? 'Email obrigatório' : null,
                  inputType: TextInputType.emailAddress,
                ),
                InputTF.InputTextField(
                  label: 'Senha',
                  icon: Icon(Icons.lock, color: Colors.purple,),
                  save: (value) =>
                      {_senha = value.trim(), print('Senha $_senha')},
                  valid: (value) =>
                      value.trim().isEmpty ? 'Senha obrigatória' : null,
                  obscure: true,
                ),
                RaisedBtn.RaisedPrimaryButton(
                    label: 'Entrar',
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        print('Entrar');
                        print('Email $_email - Senha $_senha');
                        print(_formKey.toString());
                        Navigator.popAndPushNamed(context, '/principal');
                      }
                    }),
                FlatBtn.FlatPrimaryButton(
                    label: 'Esqueceu a senha?',
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/forgot');
                    }),
                SizedBox(
                  height: 20.0,
                ),
                FlatBtn.FlatPrimaryButton(
                    label: 'Cria conta',
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/signup');
                    }),
                SizedBox(
                  height: 80.0,
                )
              ],
            ),
          ),
        ));
  }
}

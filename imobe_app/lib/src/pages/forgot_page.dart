import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imobe_app/src/base/image_base.dart';
import 'package:imobe_app/src/base/input_field_base.dart' as InputTF;
import 'package:imobe_app/src/base/raised_button_base.dart' as RaisedBtn;
import 'package:imobe_app/src/base/flat_button_base.dart' as FlatBtn;

class ForgotPage extends StatefulWidget {
  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  final _formKey = GlobalKey<FormState>();

  String _email;

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
                  helpText:
                      'O código de recuperação será enviado para seu email',
                  save: (value) => _email = value.trim(),
                  valid: (value) =>
                      value.trim().isEmpty ? 'Email obrigatório' : null,
                  inputType: TextInputType.emailAddress,
                ),
                RaisedBtn.RaisedPrimaryButton(
                    label: 'Enviar',
                    onPressed: () {
                      print('Enviar código');
                      print('Email $_email');
                      print(_formKey.toString());
                      if (_formKey.currentState.validate()) {
                        SnackBar(
                          content: Text('Código enviado'),
                        );
                        // Navigator.popAndPushNamed(context, '/home');
                      }
                    }),
                FlatBtn.FlatPrimaryButton(
                    label: 'Voltar',
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/login');
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

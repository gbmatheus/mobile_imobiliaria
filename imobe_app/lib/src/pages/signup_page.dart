import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imobe_app/src/base/image_base.dart';
import 'package:imobe_app/src/base/input_field_base.dart' as InputTF;
import 'package:imobe_app/src/base/raised_button_base.dart' as RaisedBtn;
import 'package:imobe_app/src/base/flat_button_base.dart' as FlatBtn;

class SignUpPage extends StatefulWidget {
  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  String _email;
  String _cnpj;
  String _senha;
  String _confimaSenha;

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
                InputTF.InputMaskTextField(
                  label: 'CNPJ',
                  masked: '00.000.000/0000-00',
                  icon: Icon(Icons.work, color: Colors.purple,),
                  save: (value) => _cnpj = value.trim(),
                  valid: (value) =>
                      value.trim().isEmpty ? 'CNPJ obrigatório' : null,
                ),
                InputTF.InputTextField(
                  label: 'Email',
                  icon: Icon(Icons.mail, color: Colors.purple,),
                  save: (value) => _email = value.trim(),
                  valid: (value) =>
                      value.trim().isEmpty ? 'Email obrigatório' : null,
                  inputType: TextInputType.emailAddress,
                ),
                InputTF.InputTextField(
                  label: 'Senha',
                  icon: Icon(Icons.lock, color: Colors.purple,),
                  obscure: true,
                  save: (value) => _senha = value.trim(),
                  valid: (value) =>
                      value.trim().isEmpty ? 'Senha obrigatória' : null,
                ),
                InputTF.InputTextField(
                  label: 'Confirmar senha',
                  icon: Icon(Icons.lock, color: Colors.purple,),
                  obscure: true,
                  save: (value) => _confimaSenha = value.trim(),
                  valid: (value) =>
                      value != _senha ? 'Senha obrigatória' : null,
                ),
                RaisedBtn.RaisedPrimaryButton(
                  label: 'Cadastrar',
                  onPressed: () {
                    print('Cadastrar conta');
                    if (_formKey.currentState.validate()) {
                      SnackBar(
                        content: Text('Verificando dados'),
                      );
                      // Navigator.popAndPushNamed(context, '/home');
                    }
                  },
                ),
                FlatBtn.FlatPrimaryButton(
                    label: 'Já possui conta?',
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

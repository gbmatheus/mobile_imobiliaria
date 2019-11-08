import 'package:flutter/material.dart';

class LoginSignUpPage extends StatefulWidget {
  LoginSignUpPage({this.params});

  final Map params;

  @override
  _LoginSignUpPageState createState() => _LoginSignUpPageState();
}

//Enum que gerencia o estado do formulário
enum FormMode { LOGIN, SIGNUP, FORGOT }

class _LoginSignUpPageState extends State<LoginSignUpPage> {
  final _formKey = GlobalKey<FormState>();

  String _email;
  String _senha;
  String _errorMessage;

  //login é formulario inicial
  FormMode _formMode = FormMode.LOGIN;
  // bool _isIos;
  // bool _isLoading;

  @override
  void initState() {
    _errorMessage = "";
    // _isLoading = false;
    super.initState();
  }

  void _modeSignUp() {
    _formKey.currentState.reset();
    _errorMessage = "";
    setState(() {
      _formMode = FormMode.SIGNUP;
    });
  }

  void _modeLogin() {
    _formKey.currentState.reset();
    _errorMessage = "";
    setState(() {
      _formMode = FormMode.LOGIN;
    });
  }

  void _modeForgot() {
    _formKey.currentState.reset();
    _errorMessage = "";
    setState(() {
      _formMode = FormMode.FORGOT;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[_showBody()],
      ),
    );
  }

  Widget _showBody() {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                _showLogo(),
                _showEmailInput(),
                _showPasswordInput(),
                _showPrimaryButton(),
                _showSecondaryButton(),
                _showForgotButton(),
                _showErrorMessage()
              ],
            ),
          ),
        ));
  }

  Widget _showErrorMessage() {
    if (_errorMessage.length > 0 && _errorMessage != null) {
      return Text(
        _errorMessage,
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.red,
          height: 1.0,
          // fontWeight: FontWeight.w300
        ),
      );
    } else {
      return new Container(
        height: 0.0,
      );
    }
  }

  Widget _showLogo() {
    return Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
        child: Image.asset(
          'assets/logo_1.png',
          width: 120.0,
          height: 150.0,
          // fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _showEmailInput() {
    return Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: TextFormField(
          maxLines: 1,
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          cursorColor: Colors.purple,
          decoration: InputDecoration(
            // enabledBorder: UnderlineInputBorder(
            //     borderSide: BorderSide(color: Colors.purple[200])),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.purple)),
            filled: true,
            labelText: 'Email',
            labelStyle: TextStyle(color: Colors.purple, fontSize: 16.0),
            prefixIcon: Icon(Icons.mail, color: Colors.purple),
            hintText: 'Email',
          ),
          validator: (value) => value.isEmpty ? 'Email é obrigatório' : null,
          onSaved: (value) => _email = value.trim(),
        ));
  }

  Widget _showPasswordInput() {
    if (_formMode != FormMode.FORGOT) {
      return Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: TextFormField(
            maxLines: 1,
            autofocus: true,
            obscureText: true,
            cursorColor: Colors.purple,
            decoration: InputDecoration(
              // enabledBorder: UnderlineInputBorder(
              //     borderSide: BorderSide(color: Colors.purple[200])),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple)),
              filled: true,
              labelText: 'Senha',
              labelStyle: TextStyle(color: Colors.purple, fontSize: 16.0),
              prefixIcon: Icon(Icons.lock, color: Colors.purple),
              hintText: 'Senha',
            ),
            validator: (value) => value.isEmpty ? 'Senha é obrigatória' : null,
            onSaved: (value) => _senha = value.trim(),
          ));
    } else {
      return Text(
        'Um email será enviado, para você redefinir sua senha',
        style: TextStyle(
          fontSize: 14.0,
          // fontWeight: FontWeight.w300
        ),
      );
    }
  }

  Widget _showPrimaryButton() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: SizedBox(
          child: RaisedButton(
        child: _textPrimaryButton(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
        color: Colors.purple,
        elevation: 5.0,
        onPressed: () {},
      )),
    );
  }

  Widget _showSecondaryButton() {
    return FlatButton(
      child: _textSecondaryButton(),
      onPressed: _formMode == FormMode.LOGIN ? _modeSignUp : _modeLogin,
    );
  }

  Widget _showForgotButton() {
    return FlatButton(
      child: _formMode == FormMode.LOGIN
          ? Text('Esqueceu a senha?',
              style: TextStyle(color: Colors.purple, fontSize: 16.0))
          : Text('', style: TextStyle(color: Colors.purple, fontSize: 16.0)),
      onPressed: _modeForgot,
    );
  }

  Widget _textPrimaryButton() {
    switch (_formMode) {
      case FormMode.LOGIN:
        return Text(
          'Login',
          style: TextStyle(
              fontSize: 16.0, color: Color.fromRGBO(250, 250, 250, 1.0)),
        );

        break;
      case FormMode.SIGNUP:
        return Text(
          'Criar conta',
          style: TextStyle(
              fontSize: 16.0, color: Color.fromRGBO(250, 250, 250, 1.0)),
        );

        break;
      case FormMode.FORGOT:
        return Text(
          'Recuperar senha',
          style: TextStyle(
              fontSize: 16.0, color: Color.fromRGBO(250, 250, 250, 1.0)),
        );
        break;
    }
    return Spacer();
  }

  Widget _textSecondaryButton() {
    switch (_formMode) {
      case FormMode.LOGIN:
        return Text('Criar conta?',
            style: TextStyle(fontSize: 16.0, color: Colors.purple));
        break;

      case FormMode.SIGNUP:
        return Text('Já possui conta?',
            style: TextStyle(fontSize: 16.0, color: Colors.purple));
        break;

      case FormMode.FORGOT:
        return Text('Voltar',
            style: TextStyle(fontSize: 16.0, color: Colors.purple));
        break;
    }
    return Spacer();
  }
}

import 'package:flutter/material.dart';
import 'package:imobe_app/src/base/input_field_base.dart' as InputTF;
import 'package:imobe_app/src/base/raised_button_base.dart' as RaisedBtn;

class TabItemCorretor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InputTF.InputTextField(
                label: 'Nome',
                icon: Icon(
                  Icons.person,
                  color: Colors.purple,
                ),
                capitalize: TextCapitalization.words,
                valid: (value) => value.isEmpty ? 'Vázio' : 'Nome:$value',
                save: (value) {},
              ),
              InputTF.InputMaskTextField(
                label: 'CPF',
                masked: '###.###.###-##',
                valid: (value) => value.isEmpty ? 'Vázio' : 'CPF:$value',
                save: (value) {},
              ),
              InputTF.InputTextField(
                label: 'Email',
                icon: Icon(
                  Icons.mail,
                  color: Colors.purple,
                ),
                inputType: TextInputType.emailAddress,
                valid: (value) => value.isEmpty ? 'Vázio' : 'Email:$value',
                save: (String value) {},
              ),
              InputTF.InputTextField(
                label: 'Senha',
                icon: Icon(
                  Icons.lock,
                  color: Colors.purple,
                ),
                obscure: true,
                valid: (value) => value.isEmpty ? 'Vázio' : 'Senha:$value',
                save: (String value) {},
              ),
              InputTF.InputTextField(
                label: 'Confirmar senha',
                icon: Icon(
                  Icons.lock,
                  color: Colors.purple,
                ),
                obscure: true,
                valid: (value) => value.isEmpty ? 'Vázio' : 'Senha:$value',
                save: (String value) {},
              ),
              RaisedBtn.RaisedPrimaryButton(
                  label: 'Entrar',
                  onPressed: () {
                    print('Click');
                  }),
            ],
          ),
        ));
  }
}

class TabItemImovel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InputTF.InputTextField(
              label: 'Título',
              capitalize: TextCapitalization.words,
              valid: (value) => value.isEmpty ? 'Vázio' : 'Nome:$value',
              save: (value) {},
            ),
            InputTF.InputTextField(
              label: 'Endereço',
              icon: Icon(
                Icons.location_on,
                color: Colors.purple,
              ),
              valid: (value) => value.isEmpty ? 'Vázio' : 'Endereco:$value',
              save: (String value) {},
            ),
            InputTF.InputTextField(
              label: 'Tipo',
              valid: (value) => value.isEmpty ? 'Vázio' : 'Tipo:$value',
              save: (String value) {},
            ),
            InputTF.InputMaskTextField(
              label: 'Proprietário(CPF)',
              masked: '000.000.000-00',
              icon: Icon(
                Icons.person,
                color: Colors.purple,
              ),
              helpText: 'CPF do proprietário',
              valid: (value) => value.isEmpty ? 'Vázio' : 'CPF:$value',
              save: (value) {},
            ),
            InputTF.InputTextField(
              label: 'Serviço',
              obscure: true,
              valid: (value) => value.isEmpty ? 'Vázio' : 'Serviço:$value',
              save: (String value) {},
            ),
            InputTF.InputTextField(
              label: 'Preço',
              icon: Icon(
                Icons.attach_money,
                color: Colors.purple,
              ),
              inputType: TextInputType.number,
              valid: (value) => value.isEmpty ? 'Vázio' : 'Preço:$value',
              save: (String value) {},
            ),
            RaisedBtn.RaisedPrimaryButton(
                label: 'Entrar',
                onPressed: () {
                  print('Click');
                }),
          ],
        ),
      ),
    );
  }
}

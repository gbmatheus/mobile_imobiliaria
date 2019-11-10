import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class InputTextField extends StatelessWidget {
  final String label;
  final Icon icon;
  final String helpText;
  final TextInputType inputType;
  final bool obscure;
  final TextCapitalization capitalize;
  final String Function(String value) valid;
  final void Function(String value) save;

  InputTextField({
    @required this.label,
    @required this.valid,
    @required this.save,
    this.icon = null,
    this.helpText = '',
    this.inputType = TextInputType.text,
    this.obscure = false,
    this.capitalize = TextCapitalization.none,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 5.0),
        child: TextFormField(
          maxLines: 1,
          keyboardType: inputType,
          obscureText: obscure,
          cursorColor: Colors.purple,
          textCapitalization: capitalize,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple[200])),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple)),
            filled: true,
            prefixIcon: icon,
            labelText: label,
            labelStyle: TextStyle(color: Colors.purple, fontSize: 16.0),
            helperText: this.helpText,
            helperStyle: TextStyle(color: Colors.purple, fontSize: 10.0),
            errorStyle: TextStyle(fontSize: 10.0),
          ),
          validator: this.valid,
          onSaved: this.save,
        ));
  }
}

class InputMaskTextField extends StatelessWidget {
  final String masked;
  final String label;
  final Icon icon;
  final String helpText;
  final String Function(String value) valid;
  final void Function(String value) save;

  InputMaskTextField({
    @required this.masked,
    @required this.label,
    @required this.valid,
    @required this.save,
    this.icon = null,
    this.helpText = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 5.0),
        child: TextFormField(
          keyboardType: TextInputType.number,
          cursorColor: Colors.purple,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple[200])),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple)),
            filled: true,
            prefixIcon: icon,
            labelText: this.label,
            labelStyle: TextStyle(color: Colors.purple, fontSize: 16.0),
            helperText: this.helpText,
            helperStyle: TextStyle(color: Colors.purple, fontSize: 10.0),
            errorStyle: TextStyle(fontSize: 10.0),
          ),
          controller: MaskedTextController(mask: this.masked),
          inputFormatters: [
            WhitelistingTextInputFormatter(RegExp("[0-9]")),
          ],
          validator: this.valid,
          onSaved: this.save,
        ));
  }
}

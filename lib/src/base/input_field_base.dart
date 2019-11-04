import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

Widget inputTextField(String label,{TextInputType inputType = TextInputType.text, bool obscure = false, capitalize = TextCapitalization.none}) {
  return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      child: TextFormField(
        maxLines: 1,
        keyboardType: inputType,
        obscureText: obscure,
        cursorColor: Colors.purple,
        textCapitalization: capitalize,
        decoration: InputDecoration(
          // enabledBorder: UnderlineInputBorder(
          //     borderSide: BorderSide(color: Colors.purple[200])),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.purple)),
          filled: true,
          labelText: label,
          labelStyle: TextStyle(color: Colors.purple, fontSize: 16.0),
        ),
      ));
}

Widget inputMaskTextField(String label, String masked) {
  return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        cursorColor: Colors.purple,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.purple[200])),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.purple)),
          filled: true,
          labelText: label,
          labelStyle: TextStyle(color: Colors.purple, fontSize: 16.0),
        ),
        controller: MaskedTextController(mask: masked),
        inputFormatters: [
            WhitelistingTextInputFormatter(RegExp("[0-9]")),
        ]
        ));
}


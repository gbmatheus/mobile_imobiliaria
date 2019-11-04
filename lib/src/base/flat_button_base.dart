import 'package:flutter/material.dart';

Widget flatPrimaryButton(String label) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
          child: FlatButton(
        child:
            Text(label, style: TextStyle(color: Colors.purple, fontSize: 16.0)),
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
        onPressed: () {},
      ))
    ],
  );
}

Widget flatSecondaryButton(String label) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
          child: FlatButton(
        child:
            Text(label, style: TextStyle(color: Color.fromRGBO(250, 250, 250, 1.0), fontSize: 16.0)),
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
        onPressed: () {},
      ))
    ],
  );
}

Widget flatCustomButton(String label, Color textColor) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
          child: FlatButton(
        child: Text(label, style: TextStyle(color: textColor, fontSize: 16.0)),
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
        onPressed: () {},
      ))
    ],
  );
}

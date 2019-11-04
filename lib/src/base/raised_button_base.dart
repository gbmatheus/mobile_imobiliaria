import 'package:flutter/material.dart';

Widget raisedPrimaryButton(String label) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
          child: RaisedButton(
        child:
            Text(label, style: TextStyle(color: Colors.white, fontSize: 16.0)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
        color: Colors.purple,
        onPressed: () {},
      ))
    ],
  );
}

Widget raisedSecondaryButton(String label) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
          child: RaisedButton(
        child:
            Text(label, style: TextStyle(color: Colors.purple, fontSize: 16.0)),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.purple)),
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
        color: Color.fromRGBO(250, 250, 250, 1.0),
        onPressed: () {},
      ))
    ],
  );
}

Widget raisedCustomButton(String label, Color color, Color textColor) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
          child: RaisedButton(
        child: Text(label, style: TextStyle(color: color, fontSize: 16.0)),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: textColor)),
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
        onPressed: () {},
      ))
    ],
  );
}

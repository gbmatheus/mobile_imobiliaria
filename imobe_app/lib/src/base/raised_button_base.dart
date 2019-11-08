import 'package:flutter/material.dart';

class RaisedPrimaryButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  RaisedPrimaryButton({
    @required this.label,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(0.0),
        child: RaisedButton(
          child: Text(label,
              style: TextStyle(color: Colors.white, fontSize: 16.0)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          // padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
          color: Colors.purple,
          onPressed: this.onPressed,
        ));
  }
}

class RaisedSecondaryButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  RaisedSecondaryButton({
    @required this.label,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(0.0),
        child: RaisedButton(
          child: Text(label,
              style: TextStyle(color: Colors.purple, fontSize: 16.0)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: BorderSide(color: Colors.purple)),
          padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
          color: Color.fromRGBO(250, 250, 250, 1.0),
          onPressed: this.onPressed,
        ));
  }
}

class RaisedCustomButton extends StatelessWidget {
  final String label;
  final Color colorBtn;
  final Color colorText;
  final void Function() onPressed;

  RaisedCustomButton({
    @required this.label,
    @required this.colorText,
    @required this.colorBtn,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(0.0),
        child: RaisedButton(
          child:
              Text(label, style: TextStyle(color: colorText, fontSize: 16.0)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: BorderSide(color: colorText)),
          color: colorBtn,
          padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
          onPressed: this.onPressed,
        ));
  }
}

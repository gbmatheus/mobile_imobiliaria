import 'package:flutter/material.dart';

class FlatPrimaryButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  FlatPrimaryButton({
    @required this.label,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: FlatButton(
          child: Text(label,
              style: TextStyle(color: Colors.purple, fontSize: 16.0)),
          padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
          onPressed: this.onPressed,
        ));
  }
}

class FlatSecondaryButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  FlatSecondaryButton({
    @required this.label,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: FlatButton(
          child: Text(label,
              style: TextStyle(
                  color: Color.fromRGBO(250, 250, 250, 1.0), fontSize: 16.0)),
          padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
          onPressed: this.onPressed,
        ));
  }
}

class FlatCustomButton extends StatelessWidget {
  final String label;
  final Color colorText;
  final void Function() onPressed;

  FlatCustomButton({
    @required this.label,
    @required this.colorText,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: FlatButton(
          child:
              Text(label, style: TextStyle(color: colorText, fontSize: 16.0)),
          padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0), //Alterar
          onPressed: this.onPressed,
        ));
  }
}

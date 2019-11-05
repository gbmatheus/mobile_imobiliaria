import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Padding(
          padding: EdgeInsets.only(bottom: 30.0),
          child: Image.asset(
            'assets/logo_1.png',
            height: 150.0,
            fit: BoxFit.fill,
          )),
    ]);
  }
}

Widget logoImage() {
  return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/logo_1.png',
          // width: 120.0,
          height: 150.0,
          fit: BoxFit.fill,
        ),
      ]);
}

Widget logoImg() {
  return Hero(
    tag: 'hero',
    child: Padding(
      padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
      child: Image.asset(
        'assets/logo_1.png',
        // width: 120.0,
        // height: 150.0,
        // fit: BoxFit.fill,
      ),
    ),
  );
}

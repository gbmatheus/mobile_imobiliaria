import 'package:flutter/material.dart';

Widget logoImage() {
  return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/logo_1.png',
          width: 120.0,
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
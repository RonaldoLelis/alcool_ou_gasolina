import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 65),
        Image.asset(
          "assets/images/aog-white.png",
          height: 120,
        ),
        Text('Álcool ou Gasolina?',
        style: TextStyle(
          fontSize: 30,
          fontFamily: 'Teko',
          color: Colors.white,
        ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'loading-button.dart';

class Success extends StatelessWidget {

  var resultado = '';
  Function reset;

  Success({
    @required this.resultado,
    @required this.reset,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Text(resultado,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 44,
                  fontFamily: 'Teko',
                ),
                textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                 LoadingButton(
                  busy: false,
                  invert: true,
                  text: "CALCULAR NOVAMENTE",
                  func: reset,
                  ),
              ],
            ),
          );
  }
}
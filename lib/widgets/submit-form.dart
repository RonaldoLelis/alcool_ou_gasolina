import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'input-combustivel.dart';
import 'loading-button.dart';

class SubmitForm extends StatelessWidget {

  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasCtrl,
    @required this.alcCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25
          ),
          child: 
          InputCombustivel(
            label: "Gasolina",
            controller: gasCtrl,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25
          ),
          child:
          InputCombustivel(
            label: "Álcool",
            controller: alcCtrl,
          ),
        ),
          LoadingButton(
            busy: busy,
            invert: false,
            text: "CALCULAR",
            func: submitFunc
            ),
      ],
        );
  }
}
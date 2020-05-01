import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class InputCombustivel extends StatelessWidget {

  var label = '';
  var controller = new MoneyMaskedTextController();

  InputCombustivel({
    @required this.label,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Row(
            children: <Widget>[
              Container(
                width: 125,
                alignment: Alignment.centerRight,
                child: Text(label,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontFamily: 'BigShouldersDisplay',
                  ),
                ),                
              ),
              SizedBox(width: 20),
              Container(
                width: 150,
                //child: Expanded (
                child: TextFormField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 54,
                    fontFamily: "BigShouldersDisplay",
                    ),
                    autocorrect: true,
                    decoration: InputDecoration(
                      //hintText: 'Type Text Here...',
                      hintStyle: TextStyle(color: Colors.white),
                      filled: true,
                      //fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                ),
              //),
              )
            ],
          ),
      ],
    );
  }
}
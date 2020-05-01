import 'package:etagas/widgets/logo-topo.dart';
import 'package:etagas/widgets/result.dart';
import 'package:etagas/widgets/submit-form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color _color = Colors.green;
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();
  var _busy = false;
  var _completed = false;
  var _resultText = "Compensa utilizar Álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(
          milliseconds: 1200,
        ),
        color: _color,
        child: ListView(
       padding: EdgeInsets.all(15),
        children: <Widget>[ 
          Logo(),
          _completed ?
          Success(
          resultado: _resultText,
          reset: reset,
          ) :
          SubmitForm(
            gasCtrl: _gasCtrl,
            alcCtrl: _alcCtrl,
            busy: _busy,
            submitFunc: calculate
          ),
        ],
      ),
        ),
    );
  }

  Future calculate(){
    double alc =
      double.parse(_alcCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double gas =
      double.parse(_gasCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double res = alc / gas;

    setState((){
      _completed = false;
      _busy = true;
      _color = Colors.blueAccent;
    });

    return Future.delayed(const Duration(seconds: 1), (){
      setState(() {
        if(res >= 0.7){
          _resultText = "Compensa utilizar Gasolina!";
        }else {
          _resultText = "Compensa utilizar Álcool!";
        }
        _busy = false;
        _completed = true;
      });
    });
  }

  reset(){
    setState(() {
      _alcCtrl = MoneyMaskedTextController();
      _gasCtrl = MoneyMaskedTextController();
      _completed = false;
      _busy = false;
      _color = Theme.of(context).primaryColor;
    });


  }
}
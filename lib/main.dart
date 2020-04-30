import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:etagas/widgets/input-combustivel.dart';
import 'package:etagas/widgets/logo-topo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Álcool ou Gasolina',
      theme: ThemeData(        
        primarySwatch: Colors.lightGreen,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  var _gasCtrl = new MoneyMaskedTextController();
  var _gasAlcool = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
       padding: EdgeInsets.all(15),
        children: <Widget>[ 
          Logo(),
          InputCombustivel(
            label: "Gasolina",
            controller: _gasCtrl,
          ),
            SizedBox(height: 20),
          InputCombustivel(
            label: "Álcool",
            controller: _gasAlcool,
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 65,
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(48),
            ),
            child: FlatButton(
            onPressed: () {},
            child: Text('CALCULAR',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'Teko'
            ),
            )
            ),
          ),
        ],
      ),
    );
  }
}

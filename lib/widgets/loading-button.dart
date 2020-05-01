import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {

  var busy = false;
  var invert = false;
  var text = "";
  Function func;

  LoadingButton({
    @required this.busy,
    @required this.invert,
    @required this.text,
    @required this.func
  });

  @override
  Widget build(BuildContext context) {
    return busy ?
      Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        height: 55,
        child: CircularProgressIndicator(
          backgroundColor: Colors.white24,
        ),
      )

      : Container(
              margin: EdgeInsets.all(20),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: invert ? Colors.blueAccent : Colors.white38,
                borderRadius: BorderRadius.circular(48),
              ),
              child: FlatButton(
                onPressed: func,
                child: Text(text,
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Teko'
                  ),
                  )
              ),
        );
  }
}
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;

  final onClearState;

  const Result(
      {Key? key, required this.count, required this.total, this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    //Widget img;
    if (0 <= count && count <= 3) {
      msg = "От 0 до 3";
      //img = Image.asset('..')
    } else if (4 <= count && count <= 7) {
      msg = "От 4 до 7";
    } else {
      msg = "graz";
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(
              2.0,
              5.0,
            ),
          ),
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(colors: [
          Color(0xFF5337ff),
          Color(0xFF8131ff),
          Color(0xFFbd27ff),
        ]),
      ),
      child: Column(
        children: <Widget>[
          // Container(
          //   width: 120,
          //   height: 120,
          //   child: FittedBox(
          //     fit: BoxFit.contain,
          //     //child:img картинка
          //   ),
          // ),
          Container(
              child: Text(
            msg,
            textAlign: TextAlign.center,
          )),
          Divider(
            color: Colors.white,
          ),
          Text(
            'верно ответил на $count из $total',
          ),
          Divider(
            color: Colors.white,
          ),
          FlatButton(
            child: Text('Пройти еще раз'),
            onPressed: onClearState,
          ),
        ],
      ),
    );
  }
}

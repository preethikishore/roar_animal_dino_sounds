import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/memory/memory_home.dart';

class score_builder extends StatelessWidget {
  const score_builder({
    Key key,
    @required this.time,
    @required this.score,

  }) : super(key: key);

  final int time;
  final int score;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(time.toString() + "s",
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.yellowAccent,
            )),
        FlatButton(
          child:Text('Exit',
            style: TextStyle(fontSize: 20,
                color: Colors.yellow,
                fontWeight: FontWeight.w900),)
          ,
          onPressed:()=>Navigator.push(
            context, MaterialPageRoute(builder: (context) => Memoryhome()),
          ),
        ),
        Text(score.toString(),
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.yellowAccent,
            ))
      ],
    );
  }
}



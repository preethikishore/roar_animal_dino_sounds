import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/memory/memory_home.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';

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
           MainHomeButton(),
        Text(score.toString(),
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.yellowAccent,
            ))
      ],
    );
  }
}



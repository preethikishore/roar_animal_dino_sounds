import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';

class score_builder extends StatelessWidget {

  static const insidecolor = const Color(0xffde6000);

  const score_builder({
    Key key,
    @required this.time,
    @required this.score,

  }) : super(key: key);

  final int time;
  final int score;





  @override
  Widget build(BuildContext context) {
    PlaySound p = new PlaySound();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(time.toString() + "s",
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w900,
              color: Colors.yellowAccent,
            )),


        Text(score.toString(),
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w900,
              color: Colors.yellowAccent,
            ))
      ],
    );
  }
}



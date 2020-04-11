import 'package:flutter/cupertino.dart';
import 'package:roar_animal_dino_sounds/game/game_controller.dart';
import 'package:flutter/material.dart';

class ScoreText{
 final  GameController gameController;
 TextPainter painter;
 Offset position;

 ScoreText(this.gameController){

   painter = TextPainter(
     textAlign: TextAlign.center,
     textDirection: TextDirection.ltr,

   );
   position = Offset.zero;
 }
  void render(Canvas c)
  {
    painter.paint(c, position);
  }

  void update(double t)
  {
    if((painter.text ?? '') != gameController.score.toString())
      painter.text = TextSpan(
        text: gameController.score.toString(),
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 45.0,
          fontWeight: FontWeight.w900,
        )
      );
    painter.layout();
    position = Offset(
        (gameController.screenSize.width/1.1) - (painter.width / 2),
        (gameController.screenSize.height * 0.03) - (painter.height / 2)
    );

  }
}
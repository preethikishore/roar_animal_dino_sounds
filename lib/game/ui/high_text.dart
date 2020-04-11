import 'package:flutter/cupertino.dart';
import 'package:roar_animal_dino_sounds/game/game_controller.dart';
import 'package:flutter/material.dart';

class HighScoreText{
  final  GameController gameController;
  TextPainter painter;
  Offset position;

  HighScoreText(this.gameController){

    painter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,

    );
    position = Offset.zero;
  }
  void render(Canvas c)
  {
    int highScore = gameController.storage.getInt('highScore') ?? 0;
    painter.text = TextSpan(
        text: 'High Score : $highScore',
        style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 45.0,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic
        )
    );
    painter.layout();
    position = Offset(
        (gameController.screenSize.width/2) - (painter.width / 2),
        (gameController.screenSize.height * 0.5) - (painter.height / 2)
    );
    painter.paint(c, position);
  }

  void update(double t)
  {
    int highScore = gameController.storage.getInt('highScore') ?? 0;

      painter.text = TextSpan(
          text: 'High Score : $highScore',
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 45.0,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic
          )
      );
    painter.layout();
    position = Offset(
        (gameController.screenSize.width/2) - (painter.width / 2),
        (gameController.screenSize.height * 0.5) - (painter.height / 2)
    );

  }
}
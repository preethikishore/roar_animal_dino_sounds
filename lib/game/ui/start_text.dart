import 'package:flutter/cupertino.dart';
import 'package:roar_animal_dino_sounds/game/game_controller.dart';
import 'package:flutter/material.dart';
class StartText{
  final GameController gameController;
  TextPainter painter;
  Offset position;
  StartText(this.gameController){
    painter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    position = Offset.zero;
  }
  void render(Canvas c)
  {
    painter.text = TextSpan(
        text: 'Tap to Start',
        style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 35.0,
            fontWeight: FontWeight.w900
        )
    );
    painter.layout();
    position = Offset(
        (gameController.screenSize.width/2) - (painter.width / 2),
        (gameController.screenSize.height * 0.7) - (painter.height / 2)
    );
    painter.paint(c, position);
  }

  void update(double t)
  {


    painter.text = TextSpan(
        text: 'Tap to Start',
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 35.0,
          fontWeight: FontWeight.w900
        )
    );
    painter.layout();
    position = Offset(
        (gameController.screenSize.width/2) - (painter.width / 2),
        (gameController.screenSize.height * 0.7) - (painter.height / 2)
    );

  }
}

import 'package:roar_animal_dino_sounds/game/game_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

class HealthBar{
  final GameController gameController;
  Rect healthBarRect;
  Rect remaingHelathRect;
  HealthBar(this.gameController){
    double barwidth = gameController.screenSize.width /6;
    healthBarRect = Rect.fromLTWH(gameController.screenSize.width/2 - barwidth/2,
        gameController.screenSize.height * 0.01,
        barwidth, gameController.tileSize * 0.1);
   remaingHelathRect  = Rect.fromLTWH(gameController.screenSize.width/2 - barwidth/2,
        gameController.screenSize.height * 0.01,
        barwidth, gameController.tileSize * 0.1);

  }

  void render(Canvas c)
  {
    Paint healthBarcolor = Paint()..color = Colors.transparent;
    Paint remainHealthBarcolor = Paint()..color = Colors.yellow;
    c.drawRect(healthBarRect, healthBarcolor);
    c.drawRect(remaingHelathRect, remainHealthBarcolor);
  }

  void update(double t)
  {
    double barwidth = gameController.screenSize.width/6;
    double percentHealth = gameController.player.currentHealth / gameController.player.maxHealth;
    remaingHelathRect = Rect.fromLTWH(gameController.screenSize.width / 6 - barwidth/2,
        gameController.screenSize.height * 0.01,
        barwidth * percentHealth, gameController.tileSize * 0.3);
  }
}
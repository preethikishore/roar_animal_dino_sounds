import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/game/game_controller.dart';
import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
class Enemy
{
  final GameController gameController;
  Sprite flyingSprite;
  int health=1;
  double speed;
  Rect enemyRect;
  bool isDead = false;
  Enemy(this.gameController) {
   speed = gameController.tileSize * 4;
  }



  void update(double t){
    if (!isDead)
    {
      double stepDistance = speed * 2*t ;
      Offset toPlayer = gameController.player.playerRect.center - enemyRect.center;
      if (stepDistance <= toPlayer.distance-gameController.tileSize*1.8)
      {
        Offset stepToPlayer =  Offset.fromDirection(toPlayer.direction,stepDistance);
        enemyRect = enemyRect.shift(stepToPlayer);
      }
      else
      {
        gameController.attack();
      }
    }
  }


  void render(Canvas c)
  {
    Color color = Color(0XFFFF0000);
    flyingSprite.renderRect(c, enemyRect.inflate(enemyRect.width/2));
  }

  void resize() {}

  void onTapDown()
  {
    if(!isDead){
      health--;
      if(health <= 0)
      {
        isDead = true;
        gameController.score++;
        if(gameController.score > (gameController.storage.getInt('highscore') ?? 0 ))
        {
          gameController.storage.setInt('highscore', gameController.score);
        }
      }
    }
  }
}
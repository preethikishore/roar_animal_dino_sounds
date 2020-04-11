import 'dart:io';

import 'package:flame/sprite.dart';
import 'package:roar_animal_dino_sounds/game/game_controller.dart';
import 'dart:ui';
class Player
{
  final GameController gameController;
  int maxHealth;
  int currentHealth;
  Rect playerRect;
  Sprite sleepSprite;
  Sprite upSprite;
  bool isWoken = false;
  Player(this.gameController){
    maxHealth = currentHealth =300;
    resize();
    sleepSprite = Sprite('target/pandaSleep.png');
    upSprite = Sprite('target/pandaUp.png');
  }
  void render(Canvas c)
  {
    if (!isWoken) {
      sleepSprite.renderRect(c, playerRect);
    } else {
      upSprite.renderRect(c, playerRect);
    }
  }

  void resize() {
    final size = gameController.tileSize *3;
    playerRect = Rect.fromLTWH(
        gameController.screenSize.width/2.88 - size/2,
        gameController.screenSize.height - size*1.5,
        size*2,size*2
    );
  }

  void update( double t)
  {

 if (!isWoken && currentHealth <= 0){

   isWoken = true;
   gameController.initialize();
 }
  }
}
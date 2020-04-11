import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:roar_animal_dino_sounds/game/game_controller.dart';

class Orchard {
  final GameController gameController;
  Sprite bgSprite;
  Rect bgRect;

  Orchard(this.gameController) {
    bgSprite = Sprite('ui/background.png');
    resize();
  }

  void render(Canvas c) {
    bgSprite.renderRect(c, bgRect);
  }

  void resize() {
    bgRect = Rect.fromLTWH(
      gameController.screenSize.width - (gameController.tileSize * 13),
      gameController.screenSize.height - (gameController.tileSize * 20),
      gameController.tileSize * 17,
      gameController.tileSize * 20,
    );
  }

  void update(double t) {}
}
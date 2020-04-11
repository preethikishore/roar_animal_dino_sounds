import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:roar_animal_dino_sounds/game/Enemy.dart';
import 'package:roar_animal_dino_sounds/game/game_controller.dart';

class ToothLess extends Enemy {
  double get speed => gameController.tileSize * 1.5;

  ToothLess(GameController gameController, double x, double y) : super(gameController) {
    resize(x: x, y: y);
    flyingSprite=Sprite('enemy/toothless.png');
  }

  void resize({double x, double y}) {
    x ??= (enemyRect?.left) ?? 0;
    y ??= (enemyRect?.top) ?? 0;
    enemyRect = Rect.fromLTWH(x, y, gameController.tileSize * 0.7, gameController.tileSize * 0.7);
    super.resize();
  }
}

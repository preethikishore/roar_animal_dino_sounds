import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:roar_animal_dino_sounds/game/game_controller.dart';
import 'package:roar_animal_dino_sounds/game/bgm.dart';

class SoundButton {
  final GameController game;
  Rect rect;
  Sprite enabledSprite;
  Sprite disabledSprite;
  bool isEnabled = true;

  SoundButton(this.game) {
    resize();
    enabledSprite = Sprite('ui/sound_enabled.png');
    disabledSprite = Sprite('ui/sound_disabled.png');
  }

  void render(Canvas c) {
    if (isEnabled) {
      enabledSprite.renderRect(c, rect);
    } else {
      disabledSprite.renderRect(c, rect);
    }
  }

  void resize() {
    rect = Rect.fromLTWH(
      game.tileSize * .1,
      game.tileSize * .1,
      game.tileSize,
      game.tileSize,
    );
  }

  void onTapDown() {
    if (isEnabled) {
      isEnabled = false;
      BGM.pause();
    } else {
      isEnabled = true;
      BGM.resume();
    }
  }
}

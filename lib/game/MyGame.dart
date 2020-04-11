import 'package:flame/util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:roar_animal_dino_sounds/game/game_controller.dart';

import 'package:shared_preferences/shared_preferences.dart';
class MyGame  {
  void loadGame () async
  {
    WidgetsFlutterBinding.ensureInitialized();
    Util flameUtil= Util();
    await flameUtil.fullScreen();
    await flameUtil.setOrientation(DeviceOrientation.portraitUp);
    SharedPreferences storage = await SharedPreferences.getInstance();
    await Flame.images.loadAll(<String>[
      'enemy/toothless.png',
      'ui/background.png',
      'target/pandaSleep.png',
      'target/pandaUp.png',
    ]);

    GameController gameController = GameController(storage);

    runApp(gameController.widget);

    TapGestureRecognizer tapper = TapGestureRecognizer();
    tapper.onTapDown = gameController.onTapDown;
    flameUtil.addGestureRecognizer(tapper);
  }
}



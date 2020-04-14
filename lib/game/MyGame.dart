import 'package:flame/util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:roar_animal_dino_sounds/game/game_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:roar_animal_dino_sounds/game/bgm.dart';
import 'package:roar_animal_dino_sounds/game/Sleeping_panda.dart';

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
      'ui/sound_enabled.png',
      'ui/sound_disabled.png',
    ]);

    Flame.audio.disableLog();
    await BGM.preload();

    await Flame.audio.loadAll(<String>[
      'lifeloss.mp3',
      'break.mp3',
      'background.mp3',
      'home.mp3',
    ]);

    GameController gameController = GameController(storage);

    runApp(MaterialApp(
        home: Scaffold(
          body: Container(
            child: GameWrapper(gameController),
          ),
        )));


    TapGestureRecognizer tapper = TapGestureRecognizer();
    tapper.onTapDown = gameController.onTapDown;
    flameUtil.addGestureRecognizer(tapper);
    WidgetsBinding.instance.addObserver(BGMHandler());
  }
}



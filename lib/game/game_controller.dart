import 'dart:io';
import 'dart:math';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:roar_animal_dino_sounds/game/Enemy.dart';
import 'dart:ui';
import 'package:roar_animal_dino_sounds/game/ui/player.dart';
import 'package:roar_animal_dino_sounds/game/enemy_spawner.dart';
import 'package:roar_animal_dino_sounds/game/ui/score_text.dart';
import 'package:roar_animal_dino_sounds/game/state.dart';
import 'package:roar_animal_dino_sounds/game/ui/high_text.dart';
import 'package:roar_animal_dino_sounds/game/ui/start_text.dart';
import 'package:roar_animal_dino_sounds/game/ui/health_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:roar_animal_dino_sounds/game/apples/toothless.dart';
import 'package:roar_animal_dino_sounds/game/ui/orchard.dart';
import 'package:roar_animal_dino_sounds/game/bgm.dart';
import 'package:roar_animal_dino_sounds/game/ui/soundbtn.dart';

class GameController extends Game {
  final SharedPreferences storage;
  Random rand;
  Size screenSize;
  double tileSize;
  Orchard orchard;
  Player player;
  int damage = 1;
  List <Enemy> enemies;
  HealthBar healthBar;
  EnemySpawner enemySpawner;
  int score;
  ScoreText scoreText;
  StatePlay state;
  HighScoreText highScoreText;
  StartText startText;
  SoundButton soundButton;
  bool isNewInst = true;

  GameController(this.storage){
    initialize();

  }
  void initialize()async
  {

    resize(await Flame.util.initialDimensions());
    state = StatePlay.menu;
    if (!isNewInst)
      {
        sleep(const Duration(seconds: 3));
      }
    isNewInst = false;
    rand = Random();
    orchard = Orchard(this);
    player = Player(this);
    soundButton = SoundButton(this);
    enemies = List<Enemy>();
    healthBar = HealthBar(this);
    enemySpawner = EnemySpawner(this);
    spawnEnemy();
    score = 0;
    scoreText = ScoreText(this);
    highScoreText = HighScoreText(this);
    startText = StartText(this);
    BGM.play(BGMType.home);
  }
  void render(Canvas c){
    // draw the Background
    orchard.render(c);
    player.render(c);
    soundButton.render(c);
    if( state == StatePlay.menu)
    {
      startText.render(c);
      highScoreText.render(c);

    }
    else if (state == StatePlay.playing){
      enemies.forEach((Enemy enemy) => enemy.render(c));
      scoreText.render(c);
      healthBar.render(c);
    }

  }
  void update( double t){
    if(state == StatePlay.menu)
    {
      highScoreText.update(t);
      startText.update(t);

    }else if ( state == StatePlay.playing) {
      enemySpawner.update(t);
      enemies.forEach((Enemy enemy) => enemy.update(t));
      enemies.removeWhere((Enemy enemy) => enemy.isDead);
      player.update(t);
      scoreText.update(t);
      healthBar.update(t);
    }
  }

  void resize(Size size){
    screenSize = size;
    tileSize = screenSize.width/10;
  }

  void onTapDown(TapDownDetails d)
  {
    // sound button
    if (soundButton.rect.contains(d.globalPosition)) {
      soundButton.onTapDown();
    }

    if( state == StatePlay.menu)
    {
      state = StatePlay.playing;
      BGM.play(BGMType.playing);
    }
    else if (state == StatePlay.playing) {
      // check enemy is there in tap position
      enemies.forEach((Enemy enemy) {
        if (enemy.enemyRect.contains(d.globalPosition)) {
          enemy.onTapDown();
        }
      });
    }
  }

  void attack()
  {
    if(!player.isWoken) {
      player.currentHealth -= 100;
      enemies = List<Enemy>();
      enemySpawner = EnemySpawner(this);
      enemies.removeWhere((Enemy enemy) => enemy.isDead=true);
      if (soundButton.isEnabled) {
        Flame.audio.play('lifeloss.mp3');
      }

    }
  }

  void spawnEnemy()
  {
    double x = rand.nextDouble() * screenSize.width;
    double y = - tileSize * 2.5;
    enemies.add(ToothLess(this,x,y));
  }
}
import 'package:roar_animal_dino_sounds/game/Enemy.dart';
import 'package:roar_animal_dino_sounds/game/game_controller.dart';
class EnemySpawner {
  final GameController gameController;
  final int maxSpawnInterval = 3200;
  final int minSpawnInterval = 800;
  final int  intervalChange = 3;
  final int maxEnemies = 7 ;
  int currentInterval;
  int nextSpawn;
  EnemySpawner(this.gameController){

    initialize();
  }
  void initialize()
  {
    killAllEnemies();
    currentInterval = maxSpawnInterval;
    nextSpawn = DateTime.now().millisecondsSinceEpoch + currentInterval;
  }
  void killAllEnemies()
  {
    gameController.enemies.forEach((Enemy enemy) => enemy.isDead = true);
  }

  void update(double t)
  {
    int now =  DateTime.now().millisecondsSinceEpoch;
    if ( gameController.enemies.length < maxEnemies && now >= nextSpawn){
      gameController.spawnEnemy();
      if(currentInterval > minSpawnInterval){

        currentInterval -= intervalChange;
        currentInterval -= (currentInterval * 0.1).toInt();
      }
      nextSpawn = now + currentInterval;
    }
  }
}
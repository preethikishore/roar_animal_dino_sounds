import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class PlaySound  {

  static AudioPlayer player = new AudioPlayer();

  AudioCache cache = AudioCache(fixedPlayer: player); // you have this


  Future SoundClick(String path)
 async{
   player = await cache.play(path);
 }

void AnimalNameSound(String path)
{
  final player = AudioCache();
  player.play(path);
}

  void  stopFile() {
    print('click stopp');
    //player?.stop();
    player.stop(); // stop the file like this
  }


}

// Future AudioPlayer audio = await AudioCache.play("filetobeloaded.mp3");
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
class PlaySound  {

  static AudioPlayer player = new AudioPlayer();

  AudioCache cache = AudioCache(fixedPlayer: player);


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


    player.stop();
  }


}


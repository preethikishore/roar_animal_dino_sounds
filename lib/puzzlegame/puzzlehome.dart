import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/homegame.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/models/main_home_button.dart';
import 'package:roar_animal_dino_sounds/models/main_home_image_container.dart';
import 'package:roar_animal_dino_sounds/puzzlegame/puzzle_page.dart';
import 'package:roar_animal_dino_sounds/puzzlegame/puzzlehard_page.dart';
class PuzzleHome extends StatelessWidget {
  @override

  PlaySound p = new PlaySound();

  @override
  Widget build(BuildContext context) {
    Future <bool> backscreen()
    async{

      Navigator.push(context, MaterialPageRoute(builder: (context) => homegame()))??
          false;
    }
    return WillPopScope(
      onWillPop: backscreen ,
      child: SafeArea(
        child: Scaffold(
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bghome2.png"), fit: BoxFit.cover)),
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: MainHomeButton()),

                    Expanded(
                      child: MainHomeimageContainer('assets/puzzlehomelion.png',(){ p.SoundClick('SoundAnimallion.mp3') ;
                      }),
                    ),
                    Expanded(
                      child: MainHomeimageContainer('assets/boardeasy.png',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>PuzzlePage()));}),
                    ),

                    Expanded(
                      child: MainHomeimageContainer('assets/boardhard.png',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>PuzzleHardPage()));}),
                    ),



                    Container(
                        height: 60,
                        child: new Placeholder(color:Colors.transparent)
                    ),

                  ],
                ),
              ),
            )
        ),
      ),
    ) ;
  }
}

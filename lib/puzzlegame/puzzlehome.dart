import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Rotate.dart';
import 'package:roar_animal_dino_sounds/homegame.dart';
import 'package:roar_animal_dino_sounds/instructions/instructions_jigzaw.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/models/main_home_button.dart';
import 'package:roar_animal_dino_sounds/models/main_home_image_container.dart';
import 'package:roar_animal_dino_sounds/puzzlegame/puzzle_page.dart';
import 'package:roar_animal_dino_sounds/puzzlegame/puzzlehard_page.dart';

import '../AnimationTest.dart';
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


                    Container(
                        height: 50,
                        child: new Placeholder(color:Colors.transparent)
                    ),




                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: <Widget>[
                      Expanded(
                        child: MainHomeimageContainer('assets/puzzlehomelion.png',(){ p.SoundClick('SoundAnimallion.mp3') ;
                        }),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            MainHomeimageContainer('assets/boardeasy.png',(){
                              p.stopFile();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PuzzlePage()));}),

                            MainHomeimageContainer('assets/boardhard.png',(){
                              p.stopFile();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PuzzleHardPage()));}),

                            MainHomeimageContainer('assets/boardhelp.png',(){
                              p.stopFile();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Instructionsjigzaw()));}),

                          ],
                        ),
                      )

                    ],
                  ),



                    Container(
                        height: 80,
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

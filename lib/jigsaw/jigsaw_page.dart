import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Rotate.dart';
import 'package:roar_animal_dino_sounds/homegame.dart';
import 'package:roar_animal_dino_sounds/instructions/instructions_sliding_puzzles.dart';
import 'package:roar_animal_dino_sounds/jigsaw/jigsaw_home.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/models/main_home_button.dart';
import 'package:roar_animal_dino_sounds/models/main_home_image_container.dart';
class JigsawHome extends StatelessWidget {
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
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.topLeft,
                          child: MainHomeButton()),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(child: TopAnimationHome( () {p.SoundClick('SoundAnimalmonkey.mp3'); } ,'assets/A13.png')),
                            Expanded(child: TopAnimationHome(  () {p.SoundClick('SoundAnimalmonkey.mp3'); } ,'assets/monkeyicon.png')),
                            Expanded(child: TopAnimationHome(  () {p.SoundClick('SoundAnimalmonkey.mp3'); } ,'assets/A13.png')),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Row(

                          children: <Widget>[

                          Expanded(
                            child: MainHomeimageContainer('assets/puzzlehomelion.png',(){ p.SoundClick('SoundAnimallion.mp3') ;
                            }),
                          ),

                          Expanded(
                            child: Column(

                              children: <Widget>[
                                Expanded(
                                  child: GestureDetector(
                                    child: Container(
                                     child: Image.asset('assets/boardstart.png'),
                                    ),
                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>JigsawPage()));}
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                      child: Container(
                                        child: Image.asset('assets/boardhelp.png'),
                                      ),
                                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>InstructionsSliding()));}
                                  ),
                                ),
                              ],
                            ),
                          ),


                        ],),
                      ),

                      Expanded(
                        child: Container(
                            height: 60,
                            child: new Placeholder(color:Colors.transparent)
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            )
        ),
      ),
    ) ;
  }
}

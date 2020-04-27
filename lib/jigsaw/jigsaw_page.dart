import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'package:roar_animal_dino_sounds/Rotate.dart';
import 'package:roar_animal_dino_sounds/homegame.dart';
import 'package:roar_animal_dino_sounds/instructions/instructions_sliding_puzzles.dart';
import 'package:roar_animal_dino_sounds/jigsaw/jigsaw_home.dart';
import 'package:roar_animal_dino_sounds/models/HomeImageContainer.dart';
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

                             HomeimageContainer('assets/boardstart.png',(){ p.stopFile(); Navigator.push(
                               context, MaterialPageRoute(builder: (context) =>  JigsawPage()),
                             );
                             },),
                            HomeimageContainer('assets/boardhelp.png',(){ p.stopFile(); Navigator.push(
                              context, MaterialPageRoute(builder: (context) => InstructionsSliding ()),
                            );
                            },),


                          ],
                        ),
                      ),


                    ],),

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

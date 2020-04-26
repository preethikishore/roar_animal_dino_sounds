import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/jigsaw/jigsaw_page.dart';
import 'package:roar_animal_dino_sounds/main_home_page.dart';
import 'package:roar_animal_dino_sounds/models/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/Rotate.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/models/main_home_button.dart';
import 'package:roar_animal_dino_sounds/memory/memory_home.dart';
import 'package:roar_animal_dino_sounds/puzzlegame/puzzlehome.dart';
import 'models/main_home_image_container.dart';

class homegame extends StatefulWidget {

  @override
  _homegameState createState() => _homegameState();
}

class _homegameState extends State<homegame> {

  PlaySound p = new PlaySound();
  Future <bool> backscreen()
  async{

    Navigator.push(context, MaterialPageRoute(builder: (context) => mainhome()))??
        false;

  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: backscreen,
      child: Container(

        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bghome2.png"), fit: BoxFit.cover)),
        child: Scaffold(

            backgroundColor: Colors.transparent,

            body: SafeArea(
              child: Container(

                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(


                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child:MainHomeButton(),),

                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(child: TopAnimationHome( () {p.SoundClick('SoundAnimalmonkey.mp3'); } ,'assets/A13.png')),
                            Expanded(child: TopAnimationHome(  () {p.SoundClick('SoundAnimalmonkey.mp3'); } ,'assets/monkeyicon.png')),
                            Expanded(child: TopAnimationHome(  () {p.SoundClick('SoundAnimalmonkey.mp3'); } ,'assets/A13.png')),
                          ],
                        ),
                      ),
                  //  Spacer(flex: 2,),
                      // Title_Label('Home Page',color) ,
                      Expanded(
                        child: Row(

                          children: <Widget>[
                            Expanded(
                              child: MainHomeimageContainer('assets/homegame.png',(){ p.SoundClick('SoundAnimalmonkey.mp3') ;
                              }),
                            ),
                            Column(children: <Widget>[
                              Expanded(
                                child: HomeimageContainer('assets/boardslidingpuzzle.png',(){ Navigator.push(
                                  context, MaterialPageRoute(builder: (context) =>  JigsawHome()),
                                );
                                },),
                              ),

                              Expanded(
                                child: HomeimageContainer('assets/boardjigsaw.png',(){ Navigator.push(
                                  context, MaterialPageRoute(builder: (context) =>  PuzzleHome()),
                                );
                                },),
                              ),

                              Expanded(
                                child: HomeimageContainer('assets/boardmemory.png',(){ Navigator.push(
                                  context, MaterialPageRoute(builder: (context) =>  Memoryhome()),
                                );
                                },),
                              ),


                            ],)

                          ],

                        ),
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
    );



  }
}


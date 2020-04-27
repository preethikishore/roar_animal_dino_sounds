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

                child: Column(


                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomLeft,
                      child:MainHomeButton(),),



                    Container(
                        height: 50,
                        child: new Placeholder(color:Colors.transparent)
                    ),
//

                    // Title_Label('Home Page',color) ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: <Widget>[
                        Expanded(
                          child: MainHomeimageContainer('assets/homegame.png',(){ p.SoundClick('SoundAnimalmonkey.mp3') ;
                          }),
                        ),
                        Expanded(
                          child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: <Widget>[

                            HomeimageContainer('assets/boardslidingpuzzle.png',(){ p.stopFile(); Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>  JigsawHome()),
                            );
                            },),

                            HomeimageContainer('assets/boardjigsaw.png',(){ p.stopFile(); Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>  PuzzleHome()),
                            );
                            },),

                            HomeimageContainer('assets/boardmemory.png',(){ p.stopFile(); Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>  Memoryhome()),
                            );
                            },),


                          ],),
                        )

                      ],

                    ),




                    Container(
                        height: 100,
                        child: new Placeholder(color:Colors.transparent)
                     ),

                  ],
                ),
              ),
            )
        ),


      ),
    );



  }
}


import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'package:roar_animal_dino_sounds/main_home_page.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/Test.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';
import 'package:roar_animal_dino_sounds/memory/memory_home.dart';
import 'package:roar_animal_dino_sounds/puzzlegame/puzzle_page.dart';

class homegame extends StatefulWidget {

  @override
  _homegameState createState() => _homegameState();
}

class _homegameState extends State<homegame> {

  PlaySound p = new PlaySound();


  @override
  Widget build(BuildContext context) {
    return Container(

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
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomLeft,
                      child:MainHomeButton(),),

                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(child: AnimalAnimation( 'assets/home5.png',() {p.SoundClick('SoundBirdParrot.mp3'); } ,(){}),),
                          Expanded(child: AnimalAnimation( 'assets/home7.png',() {p.SoundClick('SoundBirdSparrow.mp3'); } ,(){}),),
                        ],
                      ),
                    ),
                //  Spacer(flex: 2,),
                    // Title_Label('Home Page',color) ,
                    Expanded(
                      child: Row(
                       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: HomeimageContainer('assets/homegame.png',(){ p.SoundClick('SoundAnimalmonkey.mp3') ;
                            }),
                          ),
                          Column(children: <Widget>[
                            Expanded(
                              child: HomeimageContainer('assets/boardpuzzles.png',(){ Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>  PuzzlePage()),
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


    );



  }
}


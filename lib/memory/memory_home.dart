import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'package:roar_animal_dino_sounds/homegame.dart';
import 'package:roar_animal_dino_sounds/main_home_page.dart';
import 'package:roar_animal_dino_sounds/memory/Farm/memory_farm.dart';
import 'package:roar_animal_dino_sounds/memory/animal/animal_memory.dart';
import 'package:roar_animal_dino_sounds/memory/bird/memory_bird.dart';
import 'package:roar_animal_dino_sounds/memory/dino/memory_dino.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/Test.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_image_container.dart';


class Memoryhome extends StatefulWidget {



  @override
  _MemoryhomeState createState() => _MemoryhomeState();
}

class _MemoryhomeState extends State<Memoryhome> {

  PlaySound p = new PlaySound();
  Future <bool> backscreen()
  async{

    Navigator.push(context, MaterialPageRoute(builder: (context) => homegame()))??
        false;

  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:backscreen ,
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
                        alignment: Alignment.topLeft,
                        child: MainHomeButton()),

//                  Expanded(
//                    child: Row(
//                      children: <Widget>[
//                       // Expanded(child: AnimalAnimation( 'assets/home1.png',() {p.SoundClick('SoundAnimalmonkey.mp3'); } ,(){}),),
//                        // Expanded(child: AnimalAnimation( 'assets/home2.png',() {p.SoundClick('SoundAnimalmonkey.mp3'); } ,(){}),),
//                        Expanded(child: AnimalAnimation( 'assets/home3.png',() {p.SoundClick('SoundAnimalmonkey.mp3'); } ,(){}),),
//                        Expanded(child: AnimalAnimation( 'assets/home4.png',() {p.SoundClick('SoundFarmCat.mp3'); } ,(){}),),
//                        Expanded(child: AnimalAnimation( 'assets/home5.png',() {p.SoundClick('SoundBirdParrot.mp3'); } ,(){}),),
//                        Expanded(child: AnimalAnimation( 'assets/home7.png',() {p.SoundClick('SoundBirdSparrow.mp3'); } ,(){}),),
//                      ],
//                    ),
//                  ),

                    // Title_Label('Home Page',color) ,
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: MainHomeimageContainer('assets/home1.png',(){ p.SoundClick('SoundAnimalmonkey.mp3') ;
                            }),
                          ),
                          Column(children: <Widget>[
                            Expanded(
                              child: HomeimageContainer('assets/boardwild.png',(){ Navigator.push(
                                context, MaterialPageRoute(builder: (context) => MemoryAnimalHomePage()),
                              );
                              },),
                            ),

                            Expanded(
                              child: HomeimageContainer('assets/boarddino.png',(){ Navigator.push(
                                context, MaterialPageRoute(builder: (context) => MemoryDino()),
                              );
                              },),
                            ),
                            Expanded(
                              child: HomeimageContainer('assets/boardbirds.png',(){ Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>  MemoryBird()),
                              );
                              },),
                            ),
                            Expanded(
                              child: HomeimageContainer('assets/boardfarm.png',(){ Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>  MemoryFarm()),
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
            )
        ),


      ),
    );



  }
}


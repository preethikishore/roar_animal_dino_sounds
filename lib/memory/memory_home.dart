import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/homegame.dart';
import 'package:roar_animal_dino_sounds/memory/Farm/memory_farm.dart';
import 'package:roar_animal_dino_sounds/memory/animal/animal_memory.dart';
import 'package:roar_animal_dino_sounds/memory/bird/memory_bird.dart';
import 'package:roar_animal_dino_sounds/memory/dino/memory_dino.dart';
import 'package:roar_animal_dino_sounds/models/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/models/main_home_button.dart';
import 'package:roar_animal_dino_sounds/models/main_home_image_container.dart';


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

                    Container(
                        height: 50,
                        child: new Placeholder(color:Colors.transparent)
                    ),

//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: MainHomeimageContainer('assets/memoryzeebra.png',(){ p.SoundClick('SoundAnimalzeebra.mp3') ;
                          }),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              HomeimageContainer('assets/boardwild.png',(){ Navigator.push(
                                context, MaterialPageRoute(builder: (context) => MemoryAnimalHomePage()),
                              );
                              },),

                            HomeimageContainer('assets/boarddino.png',(){ Navigator.push(
                              context, MaterialPageRoute(builder: (context) => MemoryDino()),
                            );
                            },),
                            HomeimageContainer('assets/boardbirds.png',(){ Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>  MemoryBird()),
                            );
                            },),
                            HomeimageContainer('assets/boardfarm.png',(){ Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>  MemoryFarm()),
                            );
                            },),

                          ],),
                        )

                      ],

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
    );



  }
}


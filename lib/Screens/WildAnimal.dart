import 'dart:io';
import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Screens/welcome.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';

import 'package:roar_animal_dino_sounds/Screens/WildAnimals2.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';

import '../main_home_page.dart';

class WildAnimal extends StatelessWidget {

  PlaySound p = new PlaySound();

  @override
  Widget build(BuildContext context) {
    Future <bool> backscreen()
    async{

      Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()))??
          false;

    }

    return WillPopScope(
      onWillPop: backscreen,
      child: Container(

      decoration: boxdecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(

            child: Column(

              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child:MainHomeButton(),),


                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: <Widget>[
                        Expanded(child: AnimalAnimation('assets/A08.png',(){p.SoundClick('SoundAnimallion.mp3');},(){p.SoundClick('NameAnimallion.mp3');})),
                         Expanded(child: AnimalAnimation('assets/A18.png',(){p.SoundClick('SoundAnimalzeebra.mp3');},(){p.SoundClick('NameAnimalzebra.mp3');})),
                         Expanded(child: AnimalAnimation('assets/A03.png',(){p.SoundClick('SoundAnimalfox.mp3');},(){p.SoundClick('NameAnimalfox.mp3');})),
                      ]

                    ),
                ),


                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: <Widget>[
                       Expanded(child: AnimalAnimation('assets/A07.png',(){p.SoundClick('SoundAnimalKangaroo.mp3');},(){p.SoundClick('NameAnimalkangaroo.mp3');})),
                       Expanded(child: AnimalAnimation('assets/A13.png',(){p.SoundClick('SoundAnimalmonkey.mp3');},(){p.SoundClick('NameAnimalmonkey.mp3');})),
                       Expanded(child: AnimalAnimation('assets/A16.png',(){p.SoundClick('SoundAnimalTiger.mp3');},(){p.SoundClick('NameAnimaltiger.mp3');})),
                    ],

                  ),
                ),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(child: AnimalAnimation('assets/A02.png',(){p.SoundClick('SoundAnimalelephant.wav');},(){p.SoundClick('NameAnimalelephant.mp3');})),
                        Expanded(child: AnimalAnimation('assets/A01.png',(){p.SoundClick('SoundAnimalbear.mp3'); },(){p.SoundClick('NameAnimalbear.mp3');})),


                      ],

                    ),
                  ),

                Expanded(
                  child: Row(
                    children: <Widget>[
                      FlatButton(child: Image.asset('assets/boardback.png',
                        height: 50,
                        width: 90,
                      ),
                          onPressed:(){ Navigator.push(
                            context, MaterialPageRoute(builder: (context) => welcome()),);}
                      ),
                      Spacer(),
                      FlatButton(
                        child: Image.asset('assets/boardnext.png',
                          height: 50,
                          width: 90,),
                        onPressed: (){ Navigator.push(
                          context, MaterialPageRoute(builder: (context) => WildAnimal2() ),);},
                      )
                    ],
                  ),
                ),

                Expanded(
                  child: Container(
                      height: 10,
                      child: new Placeholder(color:Colors.transparent)
                  ),
                ),

              ],
            ),
          ),
        ),


      ),
        ),
    );
  }
}




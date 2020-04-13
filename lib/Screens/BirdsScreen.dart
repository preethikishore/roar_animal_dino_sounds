import 'package:flutter/material.dart';
import 'dart:io';
import 'package:roar_animal_dino_sounds/Screens/BirdScreen2.dart';
import 'package:roar_animal_dino_sounds/Screens/welcome.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';

import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';



class BirdsScreen extends StatelessWidget {
  PlaySound p = new PlaySound();



  @override
  Widget build(BuildContext context) {





    return Container(

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
                        Expanded(child: AnimalAnimation('assets/B03.png',(){p.SoundClick('SoundBirdDuck.mp3');},(){p.SoundClick('NameBirdduck.mp3');})),
                        Expanded(child: AnimalAnimation('assets/Birdpigeon.png',(){p.SoundClick('SoundBirdpign.mp3');},(){p.SoundClick('NameBirdpigeon.mp3');})),
                        Expanded(child: AnimalAnimation('assets/Birdseagull.png',(){p.SoundClick('SoundBirdgull.mp3');},(){p.SoundClick('NameBirdseagull.mp3');})),
                      ]

                  ),
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                        Expanded(child: AnimalAnimation('assets/B06.png',(){p.SoundClick('SoundBirdchicken.mp3');},(){p.SoundClick('NameBirdhen.mp3');})),
                        Expanded(child: AnimalAnimation('assets/Birdrooster.png',(){p.SoundClick('SoundBirdRooster.mp3');},(){p.SoundClick('NameBirdrooster.mp3');})),
                        Expanded(child: AnimalAnimation('assets/Birdpeacock.png',(){p.SoundClick('SoundBirdPeacock.mp3');},(){p.SoundClick('NameBirdpeacock.mp3');})),
                    ],

                  ),

                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                      Expanded(child: AnimalAnimation('assets/parrot.png',(){p.SoundClick('SoundBirdParrot.mp3');},(){p.SoundClick('NameBirdparrot.mp3');})),
                       Expanded(child: AnimalAnimation('assets/B08.png',(){p.SoundClick('SoundBirdWoodpecker.mp3');},(){p.SoundClick('NameBirdtoucan.mp3');})),
                      Expanded(child: AnimalAnimation('assets/Birdowl.png',(){p.SoundClick('SoundBirdOwl.mp3');},(){p.SoundClick('NameBirdowl.mp3');})),

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
                          context, MaterialPageRoute(builder: (context) => BirdsScreen2() ),);},
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
    );
  }
}
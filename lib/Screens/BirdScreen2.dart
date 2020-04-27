import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Screens/welcome.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/models/main_home_button.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'package:roar_animal_dino_sounds/models/constants.dart';
import 'BirdsScreen.dart';

class BirdsScreen2 extends StatelessWidget {
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
                        Expanded(child: AnimalAnimation('assets/B01.png',(){p.SoundClick('SoundBirdCanary.mp3');},(){p.SoundClick('NameBirdcanary.mp3');})),
                        Expanded(child: AnimalAnimation('assets/B04.png',(){p.SoundClick('SoundBirdeagle.mp3');},(){p.SoundClick('NameBirdeagle.mp3');})),
                        Expanded(child: AnimalAnimation('assets/B05.png',(){p.SoundClick('SoundBirdfinch.mp3');},(){p.SoundClick('NameBirdgoldfinch.mp3');})),
                      ]

                  ),
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: AnimalAnimation('assets/Birdpenguin.png',(){p.SoundClick('SoundBirdpenguin.mp3');},(){p.SoundClick('NameBirdpenguin.mp3');})),
                      Expanded(child: AnimalAnimation('assets/B07.png',(){p.SoundClick('SoundBirdquail.mp3');},(){p.SoundClick('NameBirdquail.mp3');})),
                      Expanded(child: AnimalAnimation('assets/BirdSparrow.png',(){p.SoundClick('SoundBirdSparrow.mp3');},(){p.SoundClick('NameBirdsparrow.mp3');})),
                    ],

                  ),

                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: AnimalAnimation('assets/Birdswallow.png',(){p.SoundClick('SoundBirdswallow.mp3');},(){p.SoundClick('NameBirdswallow.mp3');})),
                      Expanded(child: AnimalAnimation('assets/BirdTurkey.png',(){p.SoundClick('SoundBirdturkey.mp3');},(){p.SoundClick('NameBirdturkey.mp3');})),
                      Expanded(child: AnimalAnimation('assets/BirdVulcher.png',(){p.SoundClick('SoundBirdVulcher.mp3');},(){p.SoundClick('NameBirdvulture.mp3');})),
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
                          onPressed:(){
                            p.stopFile();
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => BirdsScreen()),);}
                      ),
                      Spacer(),
                      FlatButton(
                          child: Image.asset('assets/boardnext.png',
                            height: 50,
                            width: 90,),
                          onPressed: (){
                            p.stopFile();
                            Navigator.push(
                            context, MaterialPageRoute(builder: (context) => welcome()),);},
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
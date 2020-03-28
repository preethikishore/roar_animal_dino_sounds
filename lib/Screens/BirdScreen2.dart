import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeButton.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';


class BirdsScreen2 extends StatelessWidget {
  PlaySound p = new PlaySound();

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/ABackground.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(

          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Container(

            child: Column(

              children: <Widget>[

                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(child: AnimalAnimation('assets/Birdcanary.png',(){p.SoundClick('SoundBirdCanary.mp3');},(){p.SoundClick('NameBirdcanary.mp3');})),
                        Expanded(child: AnimalAnimation('assets/Birdeagle.png',(){p.SoundClick('SoundBirdeagle.mp3');},(){p.SoundClick('NameBirdeagle.mp3');})),
                        Expanded(child: AnimalAnimation('assets/Birdgoldfinch.png',(){p.SoundClick('SoundBirdfinch.mp3');},(){p.SoundClick('NameBirdgoldfinch.mp3');})),
                      ]

                  ),
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: AnimalAnimation('assets/Birdpenguin.png',(){p.SoundClick('SoundBirdpenguin.mp3');},(){p.SoundClick('NameBirdpenguin.mp3');})),
                      Expanded(child: AnimalAnimation('assets/BirdQuail.png',(){p.SoundClick('SoundBirdquail.mp3');},(){p.SoundClick('NameBirdquail.mp3');})),
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

                Align(
                    alignment: Alignment.bottomCenter,
                    child: HomeButton()),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: FlatButton(child: Image.asset('assets/BackArrows.png',
                    height: 150,
                    width: 120,)
                    ,onPressed: (){ Navigator.pop(context);
                    },
                  ),
                ),
                Container(
                  height: 15,
                  width: 150,
                ),

              ],
            ),
          ),
        ),


      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeButton.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'dart:io';

import 'package:roar_animal_dino_sounds/moadals/constants.dart';

class BirdsScreen2 extends StatelessWidget {
  PlaySound p = new PlaySound();

  @override
  Widget build(BuildContext context) {

    Future<bool> _onbackpressed()
    async {
      return showDialog(

          context: context,
          builder: (context)=> AlertDialog(
            title: Text('Do you really want to exit the app?'),
            actions: <Widget>[
              FlatButton(
                child: Text('No'),
                onPressed: ()=> Navigator.pop(context,false),
              ),
              FlatButton(
                child: Text('Yes'),
                onPressed: () => exit(0),
              ),
            ],
          )
      ) ??
          false;
    }

    return WillPopScope(
      onWillPop: _onbackpressed,
      child: Container(

        decoration: sound_boxdecoration,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Container(

              child: Column(

                children: <Widget>[

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
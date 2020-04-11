import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeButton.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'dart:io';

import 'package:roar_animal_dino_sounds/moadals/constants.dart';


class InsectsScreen extends StatelessWidget {
  PlaySound p = new PlaySound();

  @override
  Widget build(BuildContext context) {


    return Container(

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
                        Expanded(child: AnimalAnimation('assets/Insectswasp.png',(){p.SoundClick('SoundInsectsWasp.mp3');},(){p.SoundClick('NameInsewasp.mp3');})),
                        Expanded(child: AnimalAnimation('assets/insectsbee.png',(){p.SoundClick('SoundInsectsbee.mp3');},(){p.SoundClick('NameInsechoneybee.mp3');})),
                        Expanded(child: AnimalAnimation('assets/InsectsGrasshopper.png',(){p.SoundClick('SoundInsectsGrasshopper.mp3');},(){p.SoundClick('NameInsegrasshop.mp3');})),
                      ]

                  ),
                ),


                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      Expanded(child: AnimalAnimation('assets/Insectshousefly.png',(){p.SoundClick('SoundInsectshousefly.mp3');},(){p.SoundClick('NameInsecthousefly.mp3');})),
                      Expanded(child: AnimalAnimation('assets/Insectmosquito.png',(){p.SoundClick('SoundInsectsMosquito.mp3');},(){p.SoundClick('NameInsectmosquito.mp3');})),
                    ],

                  ),

                ),


                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      Expanded(child: AnimalAnimation('assets/Insectsbutterfly.png',(){p.SoundClick('SoundInsectsbutterfly.mp3');},(){p.SoundClick('NameInsectbutterfly.mp3');})),
                      Expanded(child: AnimalAnimation('assets/Insectcricket.png',(){p.SoundClick('SoundInsectsCrickets.mp3');},(){p.SoundClick('NameInsectcricket.mp3');})),
                    ],

                  ),
                ),

                HomeButton(),
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



import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeButton.dart';

class DomesticAnimal extends StatelessWidget {


  PlaySound p = new PlaySound();

  @override
  Widget build(BuildContext context) {


    return Container(

      decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/ABackground.jpg"),
              fit: BoxFit.cover)),
         child: Scaffold(
           backgroundColor: Colors.transparent,
           body: Container(
             child: Column(
               children: <Widget>[

                 Expanded(
                   child: Row(
                     children: <Widget>[
                       Expanded(child: AnimalAnimation('assets/Farmcow.png',(){p.SoundClick('SoundFarmCow.mp3');},(){p.SoundClick('NameFarmcow.mp3');})),
                       Expanded(child: AnimalAnimation('assets/Farmdonkey.png',(){p.SoundClick('SoundFarmdonkey.mp3');},(){p.SoundClick('NameFarmdonkey.mp3');})),
                       Expanded(child: AnimalAnimation('assets/Farmpig.png',(){p.SoundClick('SoundFarmpig.mp3');},(){p.SoundClick('NameFarmpig.mp3');})),
                      ]
                   ),
                 ),


                 Expanded(
                   child: Row(
                       children: <Widget>[
                         Expanded(child: AnimalAnimation('assets/Farmcat.png',(){p.SoundClick('SoundFarmCat.mp3');},(){p.SoundClick('NameFarmcat.mp3');})),
                         Expanded(child: AnimalAnimation('assets/Farmdog.png',(){p.SoundClick('SoundFarmDog.mp3');},(){p.SoundClick('NameFarmdog.mp3');})),
                         Expanded(child: AnimalAnimation('assets/Farmlamb.png',(){p.SoundClick('SoundFarmLamb.mp3');},(){p.SoundClick('NameFarmsheep.mp3');})),
                       ],
                   ),
                 ),

           Expanded(
           child: Row(
             children: <Widget>[
               Expanded(child: AnimalAnimation('assets/Farmhorse.png',(){p.SoundClick('SoundFarmhorse.mp3');},(){p.SoundClick('NameFarmhorse.mp3');})),
               Expanded(child: AnimalAnimation('assets/Farmcamel.png',(){p.SoundClick('SoundFarmcamel.mp3');},(){p.SoundClick('NameFarmcamel.mp3');}))
              // image_container('assets/rabit.png',(){}),
             ],
           ),
           ),

                HomeButton() ,
                 Container(
                   height: 15,
                   width: 150,
                 ),

               ],
             ),
           ),


         ),
    );
  }
}

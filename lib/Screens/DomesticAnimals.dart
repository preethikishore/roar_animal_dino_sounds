import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Screens/welcome.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';

import 'package:roar_animal_dino_sounds/models/constants.dart';
import 'package:roar_animal_dino_sounds/models/main_home_button.dart';

class DomesticAnimal extends StatelessWidget {


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
                       alignment: Alignment.topLeft,
                       child: MainHomeButton()),

                   Expanded(
                     child: Row(
                       children: <Widget>[
                         Expanded(child: AnimalAnimation('assets/F03.png',(){p.SoundClick('SoundFarmCow.mp3');},(){p.SoundClick('NameFarmcow.mp3');})),
                         Expanded(child: AnimalAnimation('assets/F05.png',(){p.SoundClick('SoundFarmdonkey.mp3');},(){p.SoundClick('NameFarmdonkey.mp3');})),
                         Expanded(child: AnimalAnimation('assets/F08.png',(){p.SoundClick('SoundFarmpig.mp3');},(){p.SoundClick('NameFarmpig.mp3');})),
                        ]
                     ),
                   ),


                   Expanded(
                     child: Row(
                         children: <Widget>[
                           Expanded(child: AnimalAnimation('assets/F02.png',(){p.SoundClick('SoundFarmCat.mp3');},(){p.SoundClick('NameFarmcat.mp3');})),
                           Expanded(child: AnimalAnimation('assets/F04.png',(){p.SoundClick('SoundFarmDog.mp3');},(){p.SoundClick('NameFarmdog.mp3');})),
                           Expanded(child: AnimalAnimation('assets/F07.png',(){p.SoundClick('SoundFarmLamb.mp3');},(){p.SoundClick('NameFarmsheep.mp3');})),
                         ],
                     ),
                   ),

             Expanded(
             child: Row(
               children: <Widget>[
                 Expanded(child: AnimalAnimation('assets/F06.png',(){p.SoundClick('SoundFarmhorse.mp3');},(){p.SoundClick('NameFarmhorse.mp3');})),
                 Expanded(child: AnimalAnimation('assets/F01.png',(){p.SoundClick('SoundFarmcamel.mp3');},(){p.SoundClick('NameFarmcamel.mp3');}))
                // image_container('assets/rabit.png',(){}),
               ],
             ),
             ),
                   Align(
                     alignment: Alignment.bottomRight,
                     child: FlatButton(
                       child: Image.asset('assets/boardnext.png',
                         height: 50,
                         width: 90,),
                       onPressed: (){ Navigator.push(
                         context, MaterialPageRoute(builder: (context) => welcome()),);},
                     ),
                   ),


                   Expanded(
                     child: Container(
                         height: 35,
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

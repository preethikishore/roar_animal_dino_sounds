import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Screens/welcome.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';


import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';

class DinoScreen extends StatelessWidget {



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
                      children: <Widget>[
                        Expanded(child: AnimalAnimation('assets/D01.png',(){p.SoundClick('SoundDinoBrachi.mp3');},(){p.SoundClick('NameDinobrachio.mp3');})),
                        Expanded(child: AnimalAnimation('assets/D02.png',(){p.SoundClick('SoundDinoBrontosaurus.mp3');},(){p.SoundClick('NameDinobrontosaurus.mp3');})),
                        Expanded(child: AnimalAnimation('assets/D03.png',(){p.SoundClick('SoundDinoGallimimus.mp3');},(){p.SoundClick('NameDinogallimi.mp3');})),
                      ]

                  ),
                ),


                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(child: AnimalAnimation('assets/D04.png',(){p.SoundClick('SoundDinoPachycephalos.mp3');},(){p.SoundClick('NameDinopachy.mp3');})),
                      Expanded(child: AnimalAnimation('assets/D05.png',(){p.SoundClick('SoundDinoPterodact.mp3');},(){p.SoundClick('NameDinopterodact.mp3');})),
                      Expanded(child: AnimalAnimation('assets/D06.png',(){p.SoundClick('SoundDhinoStego.mp3');},(){p.SoundClick('NameDinostego.mp3');})),
                    ],

                  ),

                ),

                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(child: AnimalAnimation('assets/D07.png',(){p.SoundClick('SoundDinoTrex11.mp3');},(){p.SoundClick('NameDinotrex.mp3');})),
                      Expanded(child: AnimalAnimation('assets/D08.png',(){p.SoundClick('SoundDinotricer.wav');},(){p.SoundClick('NameDinotriceratops.mp3');})),
                      Expanded(child: AnimalAnimation('assets/DinoVelociraptor.png',(){p.SoundClick('SoundDinoVelociraptor.mp3');},(){p.SoundClick('NameDinovelociraptor.mp3');}))
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
                )
                 ,
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

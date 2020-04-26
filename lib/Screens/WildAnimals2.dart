import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Screens/welcome.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'package:roar_animal_dino_sounds/models/constants.dart';
import 'package:roar_animal_dino_sounds/models/main_home_button.dart';

import 'WildAnimal.dart';
class WildAnimal2 extends StatelessWidget {

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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(child: AnimalAnimation('assets/A06.png',(){p.SoundClick('SoundAnimalhyena.mp3');},(){p.SoundClick('NameAnimalhynea.mp3');},)),
                        Expanded(child: AnimalAnimation('assets/A04.png',(){p.SoundClick('SoundAnimalGorilla.mp3');},(){p.SoundClick('NameAnimalgorilla.mp3');})),
                        Expanded(child: AnimalAnimation('assets/A05.png',(){p.SoundClick('SoundAnimalhippo.mp3');},(){p.SoundClick('NameAnimalhippo.mp3');})),
                      ]

                  ),
                ),


                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: AnimalAnimation('assets/A11.png',(){p.SoundClick('SoundAnimalLemur.mp3');},(){p.SoundClick('NameAnimallemur.mp3');})),
                      Expanded(child: AnimalAnimation('assets/A12.png',(){p.SoundClick('SoundAnimalleopard.mp3');},(){p.SoundClick('NameAnimalleopard.mp3');})),
                      Expanded(child: AnimalAnimation('assets/A14.png',(){p.SoundClick('SoundAnimalpanther.mp3');},(){p.SoundClick('NameAnimalpanther.mp3');})),
                    ],

                  ),
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: AnimalAnimation('assets/A15.png',(){p.SoundClick('SoundAnimalrhino.mp3');},(){p.SoundClick('NameAnimalrhino.mp3');})),
                      Expanded(child: AnimalAnimation('assets/A17.png',(){ p.SoundClick('SoundAnimalwolf.mp3');},(){p.SoundClick('NameAnimalwolf.mp3');})),


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
                            context, MaterialPageRoute(builder: (context) => WildAnimal()),);}
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

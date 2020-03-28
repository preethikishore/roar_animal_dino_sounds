import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeButton.dart';
import 'package:roar_animal_dino_sounds/Screens/WildAnimals2.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
class WildAnimal extends StatelessWidget {

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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                    Expanded(child: AnimalAnimation('assets/Animallion.png',(){p.SoundClick('SoundAnimallion.mp3');},(){p.SoundClick('NameAnimallion.mp3');})),
                     Expanded(child: AnimalAnimation('assets/Animalzebra.png',(){p.SoundClick('SoundAnimalzeebra.mp3');},(){p.SoundClick('NameAnimalzebra.mp3');})),
                     Expanded(child: AnimalAnimation('assets/Animalfox.png',(){p.SoundClick('SoundAnimalfox.mp3');},(){p.SoundClick('NameAnimalfox.mp3');})),
                  ]

                ),
            ),


            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   Expanded(child: AnimalAnimation('assets/Animalkangaroo.png',(){p.SoundClick('SoundAnimalKangaroo.mp3');},(){p.SoundClick('NameAnimalkangaroo.mp3');})),
                   Expanded(child: AnimalAnimation('assets/Animalmonkey.png',(){p.SoundClick('SoundAnimalmonkey.mp3');},(){p.SoundClick('NameAnimalmonkey.mp3');})),
                   Expanded(child: AnimalAnimation('assets/Animaltiger.png',(){p.SoundClick('SoundAnimalTiger.mp3');},(){p.SoundClick('NameAnimaltiger.mp3');})),
                ],

              ),
            ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(child: AnimalAnimation('assets/Animalelephant.png',(){p.SoundClick('SoundAnimalelephant.wav');},(){p.SoundClick('NameAnimalelephant.mp3');})),
                    Expanded(child: AnimalAnimation('assets/Animalbear.png',(){p.SoundClick('SoundAnimalbear.mp3'); },(){p.SoundClick('NameAnimalbear.mp3');})),


                  ],

                ),
              ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Center(child: HomeButton()),),

            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(child:Image.asset('assets/arrow.png',
              height: 150,
              width: 120,),
                 onPressed: (){ Navigator.push(
                  context, MaterialPageRoute(builder: (context) => WildAnimal2()),
                );
                },),
            ),

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




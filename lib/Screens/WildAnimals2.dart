import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeButton.dart';
class WildAnimal2 extends StatelessWidget {

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
                      Expanded(child: AnimalAnimation('assets/Animalhyena.png',(){p.SoundClick('SoundAnimalhyena.mp3');},(){p.SoundClick('NameAnimalhynea.mp3');},)),
                      Expanded(child: AnimalAnimation('assets/AnimalGorilla.png',(){p.SoundClick('SoundAnimalGorilla.mp3');},(){p.SoundClick('NameAnimalgorilla.mp3');})),
                      Expanded(child: AnimalAnimation('assets/Animalhippo.png',(){p.SoundClick('SoundAnimalhippo.mp3');},(){p.SoundClick('NameAnimalhippo.mp3');})),
                    ]

                ),
              ),


              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(child: AnimalAnimation('assets/AnimalLamur.png',(){p.SoundClick('SoundAnimalLemur.mp3');},(){p.SoundClick('NameAnimallemur.mp3');})),
                    Expanded(child: AnimalAnimation('assets/Animalleopard.png',(){p.SoundClick('SoundAnimalleopard.mp3');},(){p.SoundClick('NameAnimalleopard.mp3');})),
                    Expanded(child: AnimalAnimation('assets/Animalpather.png',(){p.SoundClick('SoundAnimalpanther.mp3');},(){p.SoundClick('NameAnimalpanther.mp3');})),
                  ],

                ),
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(child: AnimalAnimation('assets/Animalrhino.png',(){p.SoundClick('SoundAnimalrhino.mp3');},(){p.SoundClick('NameAnimalrhino.mp3');})),
                    Expanded(child: AnimalAnimation('assets/Animalwolf.png',(){ p.SoundClick('SoundAnimalwolf.mp3');},(){p.SoundClick('NameAnimalwolf.mp3');})),


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
    );
  }
}

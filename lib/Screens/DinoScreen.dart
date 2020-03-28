import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeButton.dart';

class DinoScreen extends StatelessWidget {



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
                      Expanded(child: AnimalAnimation('assets/Dinobrachisourus.png',(){p.SoundClick('SoundDinoBrachi.mp3');},(){p.SoundClick('NameDinobrachio.mp3');})),
                      Expanded(child: AnimalAnimation('assets/DinoBronoto.png',(){p.SoundClick('SoundDinoBrontosaurus.mp3');},(){p.SoundClick('NameDinobrontosaurus.mp3');})),
                      Expanded(child: AnimalAnimation('assets/Dinogallimimus.png',(){p.SoundClick('SoundDinoGallimimus.mp3');},(){p.SoundClick('NameDinogallimi.mp3');})),
                    ]

                ),
              ),


              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(child: AnimalAnimation('assets/Dinopacheceph.png',(){p.SoundClick('SoundDinoPachycephalos.mp3');},(){p.SoundClick('NameDinopachy.mp3');})),
                    Expanded(child: AnimalAnimation('assets/Dinopterodactyl.png',(){p.SoundClick('SoundDinoPterodact.mp3');},(){p.SoundClick('NameDinopterodact.mp3');})),
                    Expanded(child: AnimalAnimation('assets/Dinostegosaurus.png',(){p.SoundClick('SoundDhinoStego.mp3');},(){p.SoundClick('NameDinostego.mp3');})),
                  ],

                ),

              ),

              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(child: AnimalAnimation('assets/Dinotrex.png',(){p.SoundClick('SoundDinoTrex11.mp3');},(){p.SoundClick('NameDinotrex.mp3');})),
                    Expanded(child: AnimalAnimation('assets/Dinotricerotop.png',(){p.SoundClick('SoundDinotricer.wav');},(){p.SoundClick('NameDinotriceratops.mp3');})),
                    Expanded(child: AnimalAnimation('assets/DinoVelociraptor.png',(){p.SoundClick('SoundDinoVelociraptor.mp3');},(){p.SoundClick('NameDinovelociraptor.mp3');}))
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

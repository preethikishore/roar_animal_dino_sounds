import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/Quiz/Quiz15.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/moadals/QuizPanel.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeButton.dart';

class Quiz14 extends StatelessWidget {

  PlaySound p = new PlaySound();


  @override
  Widget build(BuildContext context) {

    return Container(

      decoration: Quiz_boxdecoration,
      child: Scaffold(
          backgroundColor: Colors.transparent,

          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top:90.0),
              child: Container(

                child: Column(

                  children: <Widget>[
                    Expanded(child: QuizPanel('Canary','NameBirdcanary.mp3')),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: HomeimageContainer('assets/B03.png',()=>p.SoundClick('musicno.mp3')),
                          ),
                          Expanded(
                            child: HomeimageContainer('assets/B01.png',(){
                              p.SoundClick('musicyes.mp3');
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Quiz15()),
                              );
                              },
                            ),
                          ),

                        ],

                      ),
                    ),


                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                            Expanded(
                              child: HomeimageContainer('assets/B04.png',()=> p.SoundClick('musicno.mp3')
                              ),
                            ),

                            Expanded(
                              child: HomeimageContainer('assets/B06.png',()=> p.SoundClick('musicno.mp3')),
                            ),
                          ]
                      ),
                    ),

                    Expanded(child: HomeButton()),
                    Expanded(
                      child: Container(
                          height: 60,
                          child: new Placeholder(color:Colors.transparent)
                      ),
                    ),

                  ],
                ),
              ),
            ),
          )
      ),

    );



  }
}
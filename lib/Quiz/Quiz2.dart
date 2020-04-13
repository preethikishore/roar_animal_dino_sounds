import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/Quiz/Quiz3.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/moadals/QuizPanel.dart';

import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';

class Quiz2 extends StatelessWidget {





  PlaySound p = new PlaySound();


  @override
  Widget build(BuildContext context) {

    return Container(

      decoration: boxdecoration,
      child: Scaffold(
          backgroundColor: Colors.transparent,

          body: SafeArea(

            child: Padding(
              padding: EdgeInsets.only(top:90.0),
              child: Container(
                child: Column(
                  children: <Widget>[

                    Expanded(child: QuizPanel('Lion','NameAnimallion.mp3')),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: HomeimageContainer('assets/A07.png',()=>p.SoundClick('musicno.mp3')),
                          ),
                          Expanded(
                            child: HomeimageContainer('assets/A08.png',(){

                              p.SoundClick('musicyes.mp3');
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Quiz3()),
                              );

                            },),
                          ),

                        ],

                      ),
                    ),


                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                            Expanded(
                              child: HomeimageContainer('assets/A01.png',()=> p.SoundClick('musicno.mp3'),
                              ),
                            ),

                            Expanded(
                              child: HomeimageContainer('assets/A06.png',()=>p.SoundClick('musicno.mp3')),
                            ),

                          ]
                      ),
                    ),
                  MainHomeButton(),
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

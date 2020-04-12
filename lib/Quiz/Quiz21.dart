import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/Quiz/Quiz22.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/moadals/QuizPanel.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';


class Quiz21 extends StatelessWidget {

  PlaySound p = new PlaySound();

  @override
  Widget build(BuildContext context) {

    return Container(

      decoration:boxdecoration,
      child: Scaffold(
          backgroundColor: Colors.transparent,

          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top:90.0),
              child: Container(

                child: Column(

                  children: <Widget>[
                    Expanded(child: QuizPanel('Quail','NameBirdquail.mp3')),


                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: HomeimageContainer('assets/B07.png',(){ p.SoundClick('musicyes.mp3');
                            Navigator.push(
                              context, MaterialPageRoute(builder: (context) => Quiz22()),
                            );
                            }
                            ),
                          ),
                          Expanded(
                            child: HomeimageContainer('assets/B08.png',(){

                              p.SoundClick('musicno.mp3');


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
                              child: HomeimageContainer('assets/Birdpigeon.png',(){

                                p.SoundClick('musicno.mp3');

                              },),
                            ),

                            Expanded(
                              child: HomeimageContainer('assets/B01.png',(){

                                p.SoundClick('musicno.mp3');

                              },),
                            ),

                          ]
                      ),
                    ),
                    Expanded(child:  MainHomeButton(),),

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
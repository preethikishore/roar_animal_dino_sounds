import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Quiz/Quiz27.dart';
import 'package:roar_animal_dino_sounds/models/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/models/constants.dart';
import 'package:roar_animal_dino_sounds/models/QuizPanel.dart';
import 'package:roar_animal_dino_sounds/models/main_home_button.dart';


class Quiz26 extends StatelessWidget {


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

                    Expanded(child: QuizPanel('Brontosaurus','NameDinobrontosaurus.mp3')),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: HomeimageContainer('assets/D02.png',(){

                              p.SoundClick('musicyes.mp3');
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Quiz27()),
                              );
                            }
                            ),
                          ),
                          Expanded(
                            child: HomeimageContainer('assets/A08.png',(){
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
                              child: HomeimageContainer('assets/A15.png',(){

                                p.SoundClick('musicno.mp3');
                              },),
                            ),

                            Expanded(
                              child: HomeimageContainer('assets/D01.png',(){

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
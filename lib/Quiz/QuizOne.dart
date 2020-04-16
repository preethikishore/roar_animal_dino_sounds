import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Screens/welcome.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/Quiz/Quiz2.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/moadals/QuizPanel.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';

class QuizOne extends StatelessWidget {

  PlaySound p = new PlaySound();


  @override
  Widget build(BuildContext context) {
    Future <bool> backscreen()
    async{

      Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()))??
          false;

    }


    return WillPopScope(
      onWillPop: backscreen,
      child: Container(

        decoration: boxdecoration,
        child: Scaffold(
            backgroundColor: Colors.transparent,

            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top:90.0),
                child: Container(

                  child: Column(

                    children: <Widget>[
                      Expanded(
                        child: QuizPanel('Bear','NameAnimalbear.mp3'),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: HomeimageContainer('assets/A01.png',(){

                                p.SoundClick('musicyes.mp3');

                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Quiz2()),
                              );
                              }),
                            ),
                            Expanded(
                              child: HomeimageContainer('assets/A03.png',(){ p.SoundClick('musicno.mp3');},),
                            ),

                          ],

                        ),
                      ),


                      Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[

                              Expanded(
                                child: HomeimageContainer('assets/A02.png',()=>p.SoundClick('musicno.mp3'),),
                              ),

                              Expanded(
                                child: HomeimageContainer('assets/A04.png',()=>p.SoundClick('musicno.mp3'),),
                              ),

                            ]
                        ),
                      ),
                      Expanded(child: MainHomeButton()),

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


      ),
    );



  }
}




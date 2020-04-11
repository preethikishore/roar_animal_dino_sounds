import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/Quiz/Quiz2.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/moadals/QuizPanel.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeButton.dart';


class QuizOne extends StatelessWidget {

  static const Color color = const Color(0xff13AC00) ;



  PlaySound p = new PlaySound();


  @override
  Widget build(BuildContext context) {


    return Container(

      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/spring.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,

          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top:90.0),
              child: Container(

                child: Column(

                  children: <Widget>[


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton( onPressed:(){
                        p.SoundClick('NameAnimalbear.mp3');
                      } ,
                        child: Text('BEAR',
                        style: Quizlabel,),
                      ),
                      FlatButton( onPressed:(){
                        p.SoundClick('NameAnimalbear.mp3');
                      } ,
                       child:Image.asset('assets/Speaker.png',
                       width: 30.0,
                        height: 30.0  ,
                       ),
                      ),
                    ],
                  ) ,
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




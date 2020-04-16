import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/memory/dino/memory_dino.dart';
import 'package:roar_animal_dino_sounds/memory/memory_home.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_image_container.dart';

class DinoGameOver extends StatelessWidget {
  PlaySound p = new PlaySound();

  final  score;
  DinoGameOver({ @required this.score});

  @override
  Widget build(BuildContext context) {

    Future <bool> backscreen()
    async{

      Navigator.push(context, MaterialPageRoute(builder: (context) => Memoryhome()))??
          false;

    }



    return WillPopScope(
      onWillPop: backscreen,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bghome2.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Container(

              child: Column(

                children: <Widget>[

                  Align(
                      alignment: Alignment.topLeft,
                      child: MainHomeButton()),

                  Container(
                    child: Text('Game Over',
                      style: style_game_over,
                    ),
                  ),
                  Text('Score : $score',
                    style: style_game_over,),
                  Expanded(
                    child: Row(
                      children: <Widget>[

                        Expanded(
                          child: score == 800 ? MainHomeimageContainer('assets/puzzleelephant.png',(){ p.SoundClick('win.mp3') ;
                          }) : MainHomeimageContainer('assets/elephanttry.png',(){}) ,
                        ),

                        Expanded(
                          child: Column(

                            children: <Widget>[

                              FlatButton(

                                  child:  Image.asset('assets/boardreplay.png', height: puzzleboard_height,width: puzzleboard_width,),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) =>MemoryDino())); }
                              ),

                              FlatButton(
                                  child: Image.asset('assets/boardnewgame.png', height: puzzleboard_height,width: puzzleboard_width,
                                  ),

                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Memoryhome()));
                                  }
                              ),




                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

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
        ),
      ),
    );
  }
}

















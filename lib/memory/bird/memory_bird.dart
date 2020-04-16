import 'dart:async';
import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/memory/bird/bird_card_board.dart';
import 'package:roar_animal_dino_sounds/memory/memory_home.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/memory/bird/bird_game_over.dart';
import 'package:roar_animal_dino_sounds/memory/score_builder.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';


class MemoryBird extends StatefulWidget {
  MemoryBirdState createState() => new MemoryBirdState();
}

class MemoryBirdState extends State<MemoryBird> {
  PlaySound p = new PlaySound();

  int score = 0;
  int time = 0;
  bool _timestatus ;

  @override
  void initState() {
    _timestatus = true;
    super.initState();
    Timer(Duration(seconds: 2), runTimer);


  }
  void runTimer() {

    Timer(Duration(seconds: 1), () {
      if (_timestatus == true) {
        if (time >= 50 || score >= 800) {
          p.SoundClick('puzzlecheer.mp3');
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => BirdGameOver(score: score,)));
        }
        else {
          setState(() {
            this.time += 1;
            runTimer();
          });
        }
      }
    });



  }
  Future <bool> backscreen()
  async{
    _timestatus = false;

    Navigator.push(context, MaterialPageRoute(builder: (context) => Memoryhome()))??
        false;

  }

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: backscreen,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: boxdecoration,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  //SizedBox(height: 24.0),
                  score_builder(time: time, score: score),
                  buildBoard(),
                  Container(
                      height: 20,
                      child: new Placeholder(color:Colors.transparent)
                  ),

                ],
              ),
            ),
          )),
    );
  }

  Widget buildBoard() {
    return Flexible(
        child: Stack(
          children: <Widget>[
            Container(child: Padding(padding: EdgeInsets.all(8.0), child: BirdCardBoard(onWin: onWin))),

          ],
        ));
  }



  void onWin() {

    setState(() {
      {
        p.SoundClick('puzzlepositive.mp3');
        this.score += 100;
      }
    });
  }

}

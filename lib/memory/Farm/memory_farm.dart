import 'dart:async';
import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/memory/Farm/farm_card_board.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/memory/Farm/farm_game_over.dart';
import 'package:roar_animal_dino_sounds/memory/score_builder.dart';
import 'package:roar_animal_dino_sounds/models/constants.dart';
import 'package:roar_animal_dino_sounds/memory/memory_home.dart';


class MemoryFarm extends StatefulWidget {
  MemoryFarmState createState() => new MemoryFarmState();
}

class MemoryFarmState extends State<MemoryFarm> {
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
        if (time >= 90 || score >= 800) {

          p.SoundClick('puzzlecheer.mp3');
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => FarmGameOver(score: score,)));
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
                 // SizedBox(height: 24.0),
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
          Container(child: Padding(padding: EdgeInsets.all(8.0), child: FarmCardBoard(onWin: onWin))),
          //buildGradientView()
        ],
      ),
    );
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

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/memory/Farm/farm_card_board.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/memory/Farm/farm_game_over.dart';
import 'package:roar_animal_dino_sounds/memory/score_builder.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/memory/memory_home.dart';


class MemoryFarm extends StatefulWidget {
  MemoryFarmState createState() => new MemoryFarmState();
}

class MemoryFarmState extends State<MemoryFarm> {
  PlaySound p = new PlaySound();

  int score = 0;
  int time = 0;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), runTimer);


  }
  void runTimer() {
    Timer(Duration(seconds: 1), () {
      if(time >= 50 || score >= 800)
      {
        p.SoundClick('win.mp3');
        Navigator.push(context, MaterialPageRoute(builder: (context) => FarmGameOver (score: score,)));
      }
      else
      {
        setState(() {
          this.time += 1;
          runTimer();
        });
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black12,
        body: Container(
          decoration: boxdecoration,
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
        ));
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
        p.SoundClick('musicyes.mp3');
        this.score += 100;
      }
    });
  }

}

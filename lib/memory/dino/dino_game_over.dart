import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/memory/dino/memory_dino.dart';
import 'package:roar_animal_dino_sounds/memory/memory_home.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';

class DinoGameOver extends StatelessWidget {

  final score;

  DinoGameOver({ @required this.score});

  @override
  Widget build(BuildContext context) {

      Future<bool> _onbackpressed() async {
        return showDialog(

            context: context,
            builder: (context) =>
                AlertDialog(
                  title: Text('Do you want to restart the game?'),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('Yes'),
                      onPressed: () =>
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => MemoryDino())),
                    ),
                  ],
                )
        ) ??
            false;
      }

      return WillPopScope(
        onWillPop: _onbackpressed,
        child: Container(

          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/gameover.png"), fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Text('Game Over',
                    style: style_game_over,),
                  ),
                  Text('Score : $score',
                  style: style_game_over,),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          child: Text('RePlay', style:
                          TextStyle(fontSize: 30,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => MemoryDino()));
                          },
                        ),
                        FlatButton(
                          child: Text('New Set', style:
                          TextStyle(fontSize: 30,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Memoryhome()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: score == 800
                        ? Image.asset('assets/topscore.png')
                        : Image.asset('assets/welldone.png'),
                  )

                ],
              ),
            ),
          ),
        ),
      );
    }
  }


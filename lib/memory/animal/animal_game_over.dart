
//import 'package:roar_animal_dino_sounds/memory/main.dart';
import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/memory/Farm/memory_farm.dart';
import 'package:roar_animal_dino_sounds/memory/animal/animal_memory.dart';
import 'package:roar_animal_dino_sounds/memory/memory_home.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';
class GameOver extends StatelessWidget {

  final  score;
  GameOver({ @required this.score});

  @override
  Widget build(BuildContext context) {

    Future <bool> backscreen()
    async{

      Navigator.push(context, MaterialPageRoute(builder: (context) => MemoryAnimalHomePage()))??
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
          body: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Align(
                  alignment: Alignment.bottomLeft,
                  child:MainHomeButton(),),

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
                        child: Text('RePlay',style:
                       style_game_over),
                        onPressed: (){

                         Navigator.push(context, MaterialPageRoute(builder: (context) => MemoryAnimalHomePage()));
                        },
                      ),
                      FlatButton(
                        child: Text('New Set',style:
                        style_game_over,
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Memoryhome()));
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  child: score == 800 ? Image.asset('assets/topscore.png'):Text('Try Again',style: style_game_over,),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

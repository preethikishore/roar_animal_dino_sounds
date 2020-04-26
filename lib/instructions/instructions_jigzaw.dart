import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/puzzlegame/puzzlehome.dart';

class Instructionsjigzaw extends StatelessWidget {

  PlaySound p = new PlaySound();


  @override
  Widget build(BuildContext context) {
    Future <bool> backscreen()
    async{

      Navigator.push(context, MaterialPageRoute(builder: (context) => PuzzleHome()))??
          false;
    }
    return WillPopScope(
      onWillPop: backscreen ,
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bghome2.png"), fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,

            body: SafeArea(

              child: Column(
                children: <Widget>[
                  Align(
                    child: GestureDetector(
                      onTap:(){
                        Navigator.pop(context);
                      } ,
                      child: Container(
                        child: Image.asset('assets/closebutton.png',
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 40.0, 20.0, 20.0),
                      child: Container(
                        color: Color(0Xff5fbe04),
                        child: Center(
                          child: Text(  "dfdfddfdfdfdfdfddfddd",
                            style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),),
                        ),
                      ),
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
          )
      ),
    );

  }
}
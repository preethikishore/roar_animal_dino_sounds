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

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Align(
                      child: GestureDetector(
                        onTap:(){
                          Navigator.pop(context);
                        } ,
                        child: Container(
                          child: Image.asset('assets/closebutton.png',
                            width: 20,
                            height: 40,
                          ),
                        ),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Center(
                        child: Text('JIGSAW',
                          style: TextStyle(
                            fontSize: 28.0,
                            color: Color(0xffde6000),
                            fontWeight: FontWeight.w900,

                          ),

                        ),
                      ),
                    ),

                    Expanded(
                      child: SingleChildScrollView(
                        child: Text( "1. The puzzle pieces fit at the same place where the image initially displayed.\n \n2. The image will display for 2 seconds before breaking into pieces.\n \n3. Start by constructing the puzzle with the outside pieces (one or two flat sides) and then fill the rest of the space with the remaining pieces."
                          ,
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Color(0xffde6000),
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),),
                      ),
                    ),

                    Container(
                        height: 60,
                        child: new Placeholder(color:Colors.transparent)
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
import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/jigsaw/jigsaw_page.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';

class InstructionsSliding extends StatelessWidget {

  PlaySound p = new PlaySound();


  @override
  Widget build(BuildContext context) {
    Future <bool> backscreen()
    async{

      Navigator.push(context, MaterialPageRoute(builder: (context) => JigsawHome()))??
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
                        child: Text('SLIDING PUZZLE',
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
                        child: Text( "1. The goal of the game is to arrange the blocks in the correct order.\n \n2. Board has an empty slot, you have to use this slot to move the blocks.\n \n3. To move one or more blocks, slide any block that is present in the row or column containing the empty slot.\n\n4. To solve, correct the first block then go row by row"
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

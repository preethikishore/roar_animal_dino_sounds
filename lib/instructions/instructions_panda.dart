import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';
import 'package:roar_animal_dino_sounds/models/constants.dart';

class InstructionsPanda extends StatelessWidget {

  PlaySound p = new PlaySound();


  @override
  Widget build(BuildContext context) {

    return Container(

        decoration: boxdecoration,
        child: Scaffold(
          backgroundColor: Colors.transparent,

          body: SafeArea(

            child: Padding(
              padding: EdgeInsets.only(top:90.0),
              child: Container(

                child: Center(
                  child: Text(  "dfdfddfdfdfdfdfddfddd",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w200
                    ),),
                ),
              ),
            ),
          ),
        )
    );

  }
}
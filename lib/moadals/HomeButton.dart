import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Screens/welcome.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';

class HomeButton extends StatelessWidget {
  static const color = const Color(0xff4c64db);
  static const insidecolor = const Color(0xffeff4f1);
  static const outsidecolor = const Color(0xff13AC00);
  PlaySound p = new PlaySound();
  //HomeButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){ p.stopFile();
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => welcome()),
      );
      },
      child: CircleAvatar(
        backgroundColor: outsidecolor,
        radius: 50.0,
        child: Icon(
          Icons.home,
          color: insidecolor,
          size: 30.0,
        ),

      ),
    );
  }
}




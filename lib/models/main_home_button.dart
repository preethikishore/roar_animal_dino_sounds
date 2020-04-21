import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/main_home_page.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';

class MainHomeButton extends StatelessWidget {

  static const insidecolor = const Color(0xffde6000);


  PlaySound p = new PlaySound();
  //HomeButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(


      onTap: (){ p.stopFile();
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => mainhome()),
      );
      },
      child: Icon(
        Icons.home,
        color: insidecolor,
        size: 60.0,
      ),
    );
  }
}

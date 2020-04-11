import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';

class QuizPanel extends StatelessWidget {
  PlaySound p = new PlaySound();
  final String image_name;
  final String audio_path;
  QuizPanel(this.image_name,this.audio_path);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(onPressed: () { p.SoundClick(audio_path);},
          child: Text(image_name,
            style: Quizlabel,
          ),
        ),
        FlatButton( onPressed:(){
          p.SoundClick(audio_path);
        } ,
          child:Image.asset('assets/Speaker.png',
            width: 30.0,
            height: 30.0  ,
          ),
        ),
      ],
    );
  }
}
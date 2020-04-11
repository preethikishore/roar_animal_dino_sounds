import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roar_animal_dino_sounds/main_home_page.dart';

void main() => runApp(AnimalSound());

class AnimalSound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.white,
        scaffoldBackgroundColor:Colors.white,
      ),

      home: mainhome(),
     //MemoryBird(),


    );

  }
}

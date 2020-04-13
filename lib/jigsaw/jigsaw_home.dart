import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/jigsaw/GamePage.dart';
import 'package:roar_animal_dino_sounds/jigsaw/GetImage.dart';
import 'dart:math';

class JigsawPage extends StatelessWidget {
  GetImage image = new GetImage();
  int i;
  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    i=rng.nextInt(image.images.length);
    return GamePage(MediaQuery.of(context).size, image.images[i] , 4,i);
  }
}
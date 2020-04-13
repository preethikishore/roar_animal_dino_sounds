import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/jigsaw/jigsaw_home.dart';
import 'package:roar_animal_dino_sounds/main_home_page.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_image_container.dart';
class JigsawHome extends StatelessWidget {
  PlaySound p = new PlaySound();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bghome2.png"), fit: BoxFit.cover)),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: MainHomeButton()),


                    Row(children: <Widget>[

                      Expanded(
                        child: MainHomeimageContainer('assets/homekitten.png',(){ p.SoundClick('SoundFarmCat.mp3') ;
                        }),
                      ),

                      Expanded(
                        child: GestureDetector(
                          child: Container(
                           child: Image.asset('assets/boardstart.png'),
                          ),
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>JigsawPage()));}
                        ),
                      ),


                    ],),



                    Expanded(
                      child: Container(
                          height: 10,
                          child: new Placeholder(color:Colors.transparent)
                      ),
                    ),

                  ],
                ),
              ),
            ),
          )
      ),
    ) ; 
  } 
}

import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/homegame.dart';
import 'package:roar_animal_dino_sounds/jigsaw/jigsaw_home.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_image_container.dart';
class JigsawHome extends StatelessWidget {
  @override

  PlaySound p = new PlaySound();

  @override
  Widget build(BuildContext context) {
    Future <bool> backscreen()
    async{

      Navigator.push(context, MaterialPageRoute(builder: (context) => homegame()))??
          false;
    }
    return WillPopScope(
      onWillPop: backscreen ,
      child: SafeArea(
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
                          child: MainHomeimageContainer('assets/puzzlehomelion.png',(){ p.SoundClick('SoundAnimallion.mp3') ;
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
      ),
    ) ;
  }
}

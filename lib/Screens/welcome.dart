import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Screens/BirdsScreen.dart';
import 'package:roar_animal_dino_sounds/Screens/InsectsScreen.dart';
import 'package:roar_animal_dino_sounds/Screens/DomesticAnimals.dart';
import 'package:roar_animal_dino_sounds/Screens/WildAnimal.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/moadals/Label_Panel.dart';
import 'package:roar_animal_dino_sounds/Test.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/Screens/DinoScreen.dart';

class welcome extends StatelessWidget {

  PlaySound p = new PlaySound();
  static const Color color = const Color(0xff13AC00) ;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/spring.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Container(

               child: Column(

                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(child: TopAnimationHome( () {p.SoundClick('SoundAnimalmonkey.mp3'); } ,'assets/Animalmonkey.png')),
                          Expanded(child: TopAnimationHome(  () {p.SoundClick('SoundAnimalmonkey.mp3'); } ,'assets/monkeyicon.png')),
                          Expanded(child: TopAnimationHome(  () {p.SoundClick('SoundAnimalmonkey.mp3'); } ,'assets/Animalmonkey.png')),
                        ],
                      ),
                    ),

                  // Title_Label('Home Page',color) ,
                     Expanded(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: <Widget>[
                           Expanded(
                             child: HomeimageContainer('assets/iconfarm.png',(){ Navigator.push(
                                 context, MaterialPageRoute(builder: (context) => DomesticAnimal()),
                             );
                             }),
                           ),
                             Expanded(
                             child: HomeimageContainer('assets/wildanimals.png',(){Navigator.push(
                               context, MaterialPageRoute(builder: (context) => WildAnimal()),
                             );},),
                           ),

                         ],

                       ),
                     ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(child: Label_Panel('FarmAnimals',color)),
                          Expanded(child: Label_Panel('WildAnimals',color)),

                        ],),
                    ),


                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                          Expanded(
                            child: HomeimageContainer('assets/birdicon.png',(){ Navigator.push(
                        context, MaterialPageRoute(builder: (context) => BirdsScreen()),
                      );
                      },),
                          ),

                        Expanded(
                          child: HomeimageContainer('assets/Insectsbutterfly.png',(){ Navigator.push(
                           context, MaterialPageRoute(builder: (context) => InsectsScreen()),
                          );
                           },),
                        ),

                        ]
                      ),
                    ),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                            Expanded(child: Label_Panel('Birds',color)),
                          Expanded(child: Label_Panel('Insects',color)),

                       ],
                      ),
                    ),
                    Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        Expanded(
                          child: HomeimageContainer('assets/Dinotrex.png',(){ Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>DinoScreen()),
                          );
                          },),
                        ),

                      ],)),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                        Expanded(child: Label_Panel('Dinosours',color)),
                      ],


                      ),
                    ),
                  Spacer(flex: 2,),

                 Expanded(
                   child: Row(
                      children: <Widget>[
                        Expanded(child: TopAnimationHome(  () {p.SoundClick('Homefrog.wav'); },'assets/frog.png' )),
                       Spacer() ,
                        Expanded(child: TopAnimationHome(  () { p.SoundClick('Homesquirrel.wav'); },'assets/squirel.png' )),

                     ],
                   ),
                 )

                  ],
                ),
            )
          ),
        );

      

  }
}




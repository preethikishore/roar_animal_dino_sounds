import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Quiz/QuizOne.dart';
import 'package:roar_animal_dino_sounds/Screens/BirdsScreen.dart';
import 'package:roar_animal_dino_sounds/Screens/InsectsScreen.dart';
import 'package:roar_animal_dino_sounds/Screens/DomesticAnimals.dart';
import 'package:roar_animal_dino_sounds/Screens/WildAnimal.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/Test.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/Screens/DinoScreen.dart';
import 'package:roar_animal_dino_sounds/main_home_page.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_button.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_image_container.dart';

class welcome extends StatefulWidget {



  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {


  PlaySound p = new PlaySound();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/bghome2.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,


        body: SafeArea(
          child: Container(



                 child: Padding(

                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child:MainHomeButton(),),



                      Expanded(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                        Expanded(
                        child: MainHomeimageContainer('assets/bgpuppy.png',(){ p.SoundClick('SoundFarmDog.mp3') ;
                       }),
                      ),
                      Column(children: <Widget>[
                         Expanded(
                         child: HomeimageContainer('assets/boardwild.png',(){ Navigator.push(
                         context, MaterialPageRoute(builder: (context) =>  WildAnimal()),
                          );
                          },),
                        ),

                     Expanded(
                        child: HomeimageContainer('assets/boarddino.png',(){ Navigator.push(
                            context, MaterialPageRoute(builder: (context) => DinoScreen(),
                           )
                        );
                       },
                        ),
                     ),
                      Expanded(
                         child: HomeimageContainer('assets/boardbirds.png',(){ Navigator.push(
                       context, MaterialPageRoute(builder: (context) =>   BirdsScreen()),
                             );
                           },),
                          ),
                        Expanded(
                          child: HomeimageContainer('assets/boardfarm.png',(){ Navigator.push(
                           context, MaterialPageRoute(builder: (context) => DomesticAnimal()),
                              );
                           },),
                         ),
                        Expanded(
                          child: HomeimageContainer('assets/boardinsects.png',(){ Navigator.push(
                            context, MaterialPageRoute(builder: (context) => InsectsScreen()),
                          );
                          },),
                        ),

                       ],)

                         ],

                          ),
                      ),


                      Align(
                        alignment: Alignment.bottomRight,
                        child: HomeimageContainer('assets/boardquiz.png',(){ Navigator.push(
                            context, MaterialPageRoute(builder: (context) => QuizOne(),
                        )
                        );
                        },
                        ),
                      ),



                    Expanded(
                   child: Container(
                       height: 60,
                       child: new Placeholder(color:Colors.transparent)
                       ),
                      ),

                     ],


              ),
                 )
          ),
        )
          ),


        );



  }
}




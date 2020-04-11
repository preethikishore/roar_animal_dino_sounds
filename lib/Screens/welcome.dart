import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/Quiz/QuizOne.dart';
import 'package:roar_animal_dino_sounds/Screens/BirdsScreen.dart';
import 'package:roar_animal_dino_sounds/Screens/InsectsScreen.dart';
import 'package:roar_animal_dino_sounds/Screens/DomesticAnimals.dart';
import 'package:roar_animal_dino_sounds/Screens/WildAnimal.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/moadals/Label_Panel.dart';
import 'package:roar_animal_dino_sounds/Test.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:roar_animal_dino_sounds/Screens/DinoScreen.dart';
import 'package:roar_animal_dino_sounds/main_home_page.dart';

class welcome extends StatefulWidget {

  static const Color color = const Color(0xff13AC00) ;

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {

//  MobileAdTargetingInfo targetingInfo;
//  BannerAd myBanner;
  PlaySound p = new PlaySound();
//  void show_banner()
//  {
//    myBanner
//    // typically this happens well before the ad is shown
//      ..load()
//      ..show(
//        // Positions the banner ad 60 pixels from the bottom of the screen
//        anchorOffset: 0.0,
//        // Positions the banner ad 10 pixels from the center of the screen to the right
//        horizontalCenterOffset: 10.0,
//        // Banner Position
//        anchorType: AnchorType.bottom,
//      );
//
//  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    targetingInfo = MobileAdTargetingInfo(
//      keywords: <String>['Children', 'Learning', 'Animal Sounds', 'Dinosaurs', 'Animals', 'Birds', 'Insects'],
//      contentUrl: 'http://preethikishore.com',
//      birthday: DateTime.now(),
//      childDirected: true,
//      designedForFamilies: true,
//      gender: MobileAdGender.unknown,
//      testDevices: <String>[],
//    );
//    myBanner = BannerAd(
//        adUnitId: myAdUnitId,
//        size: AdSize.smartBanner,
//        targetingInfo: targetingInfo,
//        listener: (MobileAdEvent event) {
//      print("BannerAd event is $event");
//    },
//    );
//   show_banner();
  }

  Future<bool> _onbackpressed()
  async {
    return showDialog(

        context: context,
        builder: (context)=> AlertDialog(
          title: Text('Do you really want to exit the Session?'),
          actions: <Widget>[
            FlatButton(
              child: Text('No'),
              onPressed: ()=> Navigator.pop(context,false),
            ),
            FlatButton(
              child: Text('Yes'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>mainhome())),
            ),
          ],
        )
    ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onbackpressed,
      child: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/spring.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,

          body: SafeArea(
            child: Container(

                   child: Column(

                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(child: TopAnimationHome( () {p.SoundClick('SoundAnimalmonkey.mp3'); } ,'assets/A13.png')),
                              Expanded(child: TopAnimationHome(  () {p.SoundClick('SoundAnimalmonkey.mp3'); } ,'assets/monkeyicon.png')),
                              Expanded(child: TopAnimationHome(  () {p.SoundClick('SoundAnimalmonkey.mp3'); } ,'assets/A13.png')),
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
                              Expanded(child: Label_Panel('FarmAnimals',welcome.color)),
                              Expanded(child: Label_Panel('WildAnimals',welcome.color)),

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
                                Expanded(child: Label_Panel('Birds',welcome.color)),
                              Expanded(child: Label_Panel('Insects',welcome.color)),

                           ],
                          ),
                        ),
                        Expanded(child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                            Expanded(
                              child: HomeimageContainer('assets/D07.png',(){ Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>DinoScreen()),
                              );
                              },),
                            ),

                          ],)),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                            Expanded(child: Label_Panel('Dinosours',welcome.color)),
                          ],


                          ),
                        ),
                      Spacer(flex:2),

                     Expanded(
                       child: Row(
                          children: <Widget>[
                            Expanded(child: TopAnimationHome(  () {p.SoundClick('Homefrog.wav'); },'assets/frog.png' )),
                            Expanded(
                              child: HomeimageContainer('assets/homequiz.png',(){ Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>QuizOne()),
                              );
                              },),
                            ),
                            Expanded(child: TopAnimationHome(  () { p.SoundClick('Homesquirrel.wav'); },'assets/squirel.png' )),


                         ],
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
                ),
          )
            ),


          ),
    );



  }
}




import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:roar_animal_dino_sounds/AnimationTest.dart';
import 'package:roar_animal_dino_sounds/Screens/welcome.dart';
import 'package:roar_animal_dino_sounds/homegame.dart';
import 'package:roar_animal_dino_sounds/moadals/main_home_image_container.dart';
import 'package:roar_animal_dino_sounds/moadals/HomeImageContainer.dart';
import 'package:roar_animal_dino_sounds/Test.dart';
import 'package:roar_animal_dino_sounds/moadals/PlaySound.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'dart:io';
import 'package:roar_animal_dino_sounds/game/MyGame.dart';
import 'package:roar_animal_dino_sounds/moadals/constants.dart';

class mainhome extends StatefulWidget {

  static const Color color = const Color(0xff13AC00) ;

  @override
  _mainhomeState createState() => _mainhomeState();
}

class _mainhomeState extends State<mainhome> {

  MobileAdTargetingInfo targetingInfo;
  BannerAd myBanner;
 PlaySound p = new PlaySound();
  void show_banner()
  {
    myBanner
    // typically this happens well before the ad is shown
      ..load()
      ..show(
        // Positions the banner ad 60 pixels from the bottom of the screen
        anchorOffset: 0.0,
        // Positions the banner ad 10 pixels from the center of the screen to the right
        horizontalCenterOffset: 10.0,
        // Banner Position
        anchorType: AnchorType.bottom,
      );

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    targetingInfo = MobileAdTargetingInfo(
      keywords: <String>['Children', 'Learning', 'Animal Sounds', 'Dinosaurs', 'Animals', 'Birds', 'Insects'],
      contentUrl: 'http://preethikishore.com',
      birthday: DateTime.now(),
      childDirected: true,
      designedForFamilies: true,
      gender: MobileAdGender.unknown,
      testDevices: <String>[],
    );
    myBanner = BannerAd(
      adUnitId: myAdUnitId,
      size: AdSize.smartBanner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd event is $event");
      },
    );
    show_banner();
  }

  Future<bool> _onbackpressed()
  async {
    return showDialog(

        context: context,
        builder: (context)=> AlertDialog(
          title: Text('Do you really want to exit the app?'),
          actions: <Widget>[
            FlatButton(
              child: Text('No'),
              onPressed: ()=> Navigator.pop(context,false),
            ),
            FlatButton(
              child: Text('Yes'),
              onPressed: () => exit(0),
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
                image: AssetImage("assets/bghome2.png"), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,

            body: SafeArea(
              child: Container(

                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(child: AnimalAnimation( 'assets/home1.png',() {p.SoundClick('SoundAnimalmonkey.mp3'); } ,(){}),),
                            Text('ROAR & FUN',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w800,
                              fontStyle: FontStyle.italic,
                              color: Color(0xffde6000)
                            ),),

                           Expanded(child: AnimalAnimation( 'assets/home6.png',() {p.SoundClick('SoundAnimalmonkey.mp3'); } ,(){}),),
                          ],
                        ),
                      ),
                       //Spacer(),
                      // Title_Label('Home Page',color) ,
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: MainHomeimageContainer('assets/homekitten.png',(){ p.SoundClick('SoundFarmCat.mp3') ;
                              }),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                              Expanded(
                                child: HomeimageContainer('assets/boardsounds.png',(){ Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => welcome()),
                                );
                                },),
                              ),


                              Expanded(
                                child: HomeimageContainer('assets/boardgames.png',(){ Navigator.push(
                                  context, MaterialPageRoute(builder: (context) =>  homegame()),
                                );
                                },),
                              ),
                              Expanded(
                                child: HomeimageContainer('assets/boardsleep.png',() async{

                                  MyGame myGame = MyGame();
                                  myGame.loadGame();
                                },),

                              ),

                            ],)

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
              ),
            )
        ),


      ),
    );



  }
}

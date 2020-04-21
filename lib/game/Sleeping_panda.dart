import 'dart:io';

import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/game/game_controller.dart';
import 'package:roar_animal_dino_sounds/main_home_page.dart';

class GameWrapper extends StatefulWidget {
  final GameController game;
  GameWrapper(this.game);

  @override
  _GameWrapperState createState() => _GameWrapperState();
}

class _GameWrapperState extends State<GameWrapper> {



  void initState() {

    super.initState();

  }


  Future<bool> _onbackpressed()
  async {
    return showDialog(

        context: context,
        builder: (context)=> AlertDialog(
          title: Text('Are You Sure ?'),
          content:Text('Do you want to exit ?'),
          actions: <Widget>[
            FlatButton(
              child: Text('No'),
              onPressed: ()=> Navigator.pop(context,false),
            ),
            FlatButton(
              child: Text('Yes'),
//               onPressed:() {Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => mainhome()));}
              onPressed: () => exit(0),
            ),
          ],
        )
    ) ??
        false;
  }

  @override
  void dispose() {

    super.dispose();
    widget.game.widget;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onbackpressed,
        child: widget.game.widget);
  }
}

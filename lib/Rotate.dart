import 'dart:math'as math;
import 'package:flutter/material.dart';


class TopAnimationHome  extends StatefulWidget {

  final Function action;
  final String image_path;
  TopAnimationHome(this.action,this.image_path) ;

  @override
  _TopAnimationHomeState createState() => _TopAnimationHomeState();
}

class _TopAnimationHomeState extends State<TopAnimationHome> with TickerProviderStateMixin{
  AnimationController animController;
  Animation<double> animation;

  @override

  void initState() {

    super.initState();
    animController = AnimationController(duration: Duration(seconds: 5), vsync: this,);

    final curvedAnimation = CurvedAnimation(
      parent: animController,
      curve: Curves.bounceIn,
      reverseCurve: Curves.easeOut,
    );
    animation = Tween<double>(
      begin: 0,
      end: 2 * math.pi,
    ).animate(curvedAnimation);

    animController.addListener(() {

      setState(() {});
    });


  }
  @override
  void dispose() {

    super.dispose();
    animController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        animController.forward(from: 0.0);

        widget.action();

      },
      child: Transform.rotate(
        angle: animation.value,
        child: Container(

          child: Image.asset(widget.image_path,
            height:80.0,
            width: 80.0,
          ),

        ),
      ),
    );
  }
}

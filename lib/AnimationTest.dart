
import 'package:flutter/material.dart';
import 'package:roar_animal_dino_sounds/models/PlaySound.dart';

class AnimalAnimation extends StatefulWidget {

  final String image_data;
  final Function action;
  final Function NameSound;
  AnimalAnimation(this.image_data,this.action,this.NameSound);
  PlaySound p = new PlaySound();


  @override
  _AnimalAnimationState createState() => _AnimalAnimationState();
}

class _AnimalAnimationState extends State<AnimalAnimation> with TickerProviderStateMixin {
  AnimationController animController;

  Animation<double> animation;

  @override

  void initState() {

    super.initState();
    animController = AnimationController(duration: Duration(milliseconds: 300), vsync: this,

    );

    final curvedAnimation = CurvedAnimation(
      parent: animController,
    // curve: Curves.bounceIn,
    // reverseCurve: Curves.easeOut,
      curve: Curves.bounceOut
    );
    animation = Tween<double>(
      begin: 0.75,
      end: 1.0,
    ).animate(curvedAnimation);

  }


  @override
  void dispose() {

    super.dispose();
    animController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotatingTransition(scale: animation , child: TestimageContainer(widget.image_data,(){
      widget.p.stopFile();
      animController.forward();
      if(animController.isCompleted) {

        animController.reverse();
        widget.NameSound();
      }else
      {
      
        animController.forward();
        widget.action();

      }


    })
    );
  }
}


class RotatingTransition extends StatelessWidget {
  RotatingTransition({
    // Give the animation a better fitting name - we're animating the angle of rotation.
    @required this.scale,
    @required this.child,
  });

  final Widget child;
  final Animation<double> scale;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: scale,
      child: child,
      builder: (context, child) {
        return Transform.scale(
          scale: scale.value ,
          child: child,
        );

      },
    );
  }
}



class TestimageContainer  extends StatelessWidget {

  final String image_data;
  final Function action;
  TestimageContainer(this.image_data,this.action) ;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: action ,
      child: Container(

        child: Image.asset((image_data),
          height:150,
          width: 150,
        ),

      ),
    );
  }
}

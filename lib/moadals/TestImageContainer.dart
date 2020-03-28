import 'dart:math'as math;
import 'package:flutter/material.dart';



class TestimageContainer  extends StatefulWidget {
  final String image_data;
  final Function action;
  TestimageContainer(this.image_data,this.action) ;

  @override
  _TestimageContainerState createState() => _TestimageContainerState();
}

class _TestimageContainerState extends State<TestimageContainer> with TickerProviderStateMixin{
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

             child: Image.asset(widget.image_data,
             height:150,
             width: 150,
        ),

        ),
      ),
    );
  }
}




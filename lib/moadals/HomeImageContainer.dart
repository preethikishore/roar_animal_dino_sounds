import 'package:flutter/material.dart';

class HomeimageContainer  extends StatelessWidget {
   static const color = const Color(0xff13AC00);
  final String image_data;
  final Function action;
  HomeimageContainer(this.image_data,this.action) ;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: action ,
      child: CircleAvatar(
        radius: 80.0,
        backgroundColor:Colors.white ,
        child: Image.asset((image_data),
          height:175,
          width: 175,
        ),

      ),
    );
  }
}
import 'package:flutter/material.dart';

class HomeimageContainer  extends StatelessWidget {

  final String image_data;
  final Function action;
  HomeimageContainer(this.image_data,this.action) ;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: action ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          child: Image.asset((image_data),
//          height:95,
//          width: 250,
          ),

        ),
      ),
    );
  }
}
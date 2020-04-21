import 'package:flutter/material.dart';

class MainHomeimageContainer  extends StatelessWidget {
  final String image_data;
  final Function action;
 MainHomeimageContainer(this.image_data,this.action) ;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: action ,
      child: Container(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset((image_data),
          ),
        ),

      ),
    );

  }
}
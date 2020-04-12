import 'package:flutter/material.dart';

class MainHomeimageContainer  extends StatelessWidget {
//  static const color = const Color(0xff13AC00);
  final String image_data;
  final Function action;
 MainHomeimageContainer(this.image_data,this.action) ;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: action ,
      child: Container(

        child: Image.asset((image_data),
          height:220,
          width: 200,
        ),

      ),
    );
  }
}
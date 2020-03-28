import 'package:flutter/material.dart';
class Label_Panel extends StatelessWidget {

  final String Name;
  final Color color;
  Label_Panel(this.Name,this.color) ;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){},
      child: Text(Name,style:TextStyle(color: color,
          fontSize: 20.0,
          fontWeight: FontWeight.bold) ),
    );
  }
}

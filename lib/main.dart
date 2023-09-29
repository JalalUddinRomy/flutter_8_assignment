import 'package:flutter/material.dart';
import 'package:flutter_8_assignment/horizontalhomepage.dart';
import 'package:flutter_8_assignment/potraithomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:OrientationBuilder(
        builder: (BuildContext context, Orientation orientation)
    {
          if(orientation==Orientation.portrait){
            return PotraitHomePage();

          }
          else{
            return HorizontalHomePage();

          }
        },
      ),
    );
  }

}
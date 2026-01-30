import 'package:custom_painter/Screens/draw_oval.dart';
import 'package:flutter/material.dart';
import 'Screens/differ_between_RRect.dart';
import 'Screens/draw_circle.dart';
import 'Screens/draw_line.dart';
import 'Screens/draw_rectangle.dart';
import 'Screens/rectangle_with_rounded_corner.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      //home: DrawLine(),
      //home: DrawCircle(),
      //home: DrawRectangle(),
       // home: DrawOval(),
      //home: RectangleWithRoundedCorner(),
      home: DifferBetweenRRect(),
    );
  }
}
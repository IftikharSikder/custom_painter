import 'package:flutter/material.dart';
import 'Screens/draw_circle.dart';
import 'Screens/draw_line.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: DrawLine(),
      home: DrawCircle(),
    );
  }
}
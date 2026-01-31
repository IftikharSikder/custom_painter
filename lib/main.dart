import 'package:flutter/material.dart';
import 'Screens/differ_between_RRect.dart';
import 'Screens/draw_circle.dart';
import 'Screens/draw_color_canvas.dart';
import 'Screens/draw_gradient_canvas.dart';
import 'Screens/draw_line.dart';
import 'Screens/draw_points_lines_polygons.dart';
import 'Screens/draw_points_lines_polygons_using_fload32_list.dart';
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
      debugShowCheckedModeBanner: false,
      //home: DrawLine(),
      //home: DrawCircle(),
      //home: DrawRectangle(),
      // home: DrawOval(),
      //home: RectangleWithRoundedCorner(),
      //home: DrawGradientCanvas(),
      //home: DrawColorCanvas(),
      //home: DrawPointsLinesPolygons(),
      home: DrawPointsLinesPolygonsUsingFload32List(),
    );
  }
}
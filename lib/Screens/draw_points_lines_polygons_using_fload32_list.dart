import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';

class DrawPointsLinesPolygonsUsingFload32List extends StatelessWidget {
  const DrawPointsLinesPolygonsUsingFload32List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          child: CustomPaint(
            size: Size(300, 300),
            painter: PointsPainter(),
          ),
        ),
      ),
    );
  }
}

class PointsPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
     final Float32List points = Float32List.fromList([
           0,0,
           size.width, 0,
           size.width/2, size.height/2,
           0,0,
         ]);
    canvas.drawRawPoints(PointMode.polygon, points, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

class DrawPointsLinesPolygons extends StatelessWidget {
  const DrawPointsLinesPolygons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          size: Size(300, 300),
          painter: PointsPainter(),
        ),
      ),
    );
  }
}

class PointsPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
        ..color = Colors.blue
        ..style = PaintingStyle.stroke
        ..strokeWidth = 5;
    List<Offset> points = [
       Offset(20, 0),
       Offset(40, 20),
       Offset(40, 20),
       Offset(0, 40),
       Offset(0, 40),
       Offset(20, 0),
    ];
    canvas.drawPoints(PointMode.lines, points, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
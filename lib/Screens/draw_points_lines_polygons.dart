import 'dart:ui';

import 'package:flutter/material.dart';

class DrawPointsLinesPolygons extends StatelessWidget {
  const DrawPointsLinesPolygons({super.key});

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
    List<Offset> points = [
       Offset.zero,
       Offset(size.width, 0),
      // Offset(size.width, 0),
       Offset(size.width/2, size.height/2),
      // Offset(size.width/2, size.height/2),
      Offset.zero,
    ];
    canvas.drawPoints(PointMode.polygon, points, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
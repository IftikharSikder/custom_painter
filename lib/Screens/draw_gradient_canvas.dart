import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class DrawGradientCanvas extends StatelessWidget {
  const DrawGradientCanvas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          size: Size(300, 300),
          painter: GradientCanvasPainter(),
        ),
      ),
    );
  }
}
class GradientCanvasPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.shader = ui.Gradient.linear(Offset.zero, Offset(size.width,size.height), [Colors.green, Colors.red]);
    canvas.clipRect(Offset.zero & size);
    canvas.drawPaint(paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DifferBetweenRRect extends StatelessWidget{
  const DifferBetweenRRect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue.withValues(alpha: .5),
          child: CustomPaint(
            painter: DifferBetweenRRectPainter(),
            size: Size(300, 300),
          ),
        ),
      ),
    );
  }
}

class DifferBetweenRRectPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.green;
    paint.strokeWidth = 5;
    paint.style = PaintingStyle.stroke;
    RRect outerRRect = RRect.fromRectAndRadius(Rect.fromLTRB(10, 10, 110, 110), Radius.circular(10));
    RRect innerRRect = RRect.fromRectAndRadius(Rect.fromLTRB(20, 20, 100, 60), Radius.circular(10));
    canvas.drawDRRect(outerRRect, innerRRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
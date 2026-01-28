import 'package:flutter/material.dart';

class DrawCircle extends StatelessWidget {
  const DrawCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.pink.withValues(alpha: .5),
          child: CustomPaint(
            painter: CirclePainter(),
            size: Size(300, 300),
          ),
        ),
      ),
    );
  }
}
class CirclePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 2;
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    canvas.drawCircle(Offset(size.width/2, size.height/2), size.height/2, paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

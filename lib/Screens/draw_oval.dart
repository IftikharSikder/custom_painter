import 'package:flutter/material.dart';

class DrawOval extends StatelessWidget {
  const DrawOval({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          child: CustomPaint(
            painter: OvalPainter(),
            size: Size(300, 300),
          ),
        ),
      ),
    );
  }
}

class OvalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.red;
    paint.strokeWidth = 5;
    paint.style = PaintingStyle.stroke;
    canvas.drawOval(Rect.fromLTRB(size.width/4, size.height/4, size.width/2, size.height-100), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
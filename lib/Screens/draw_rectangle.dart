import 'package:flutter/material.dart';

class DrawRectangle extends StatelessWidget {
  const DrawRectangle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          child: CustomPaint(
            size: Size(300, 300),
            painter: RectanglePainter(),
          ),
        ),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 5;
    paint.color = Colors.green;
    paint.style = PaintingStyle.stroke;
    //canvas.drawRect(Rect.fromCenter(center: Offset(size.width/2, size.height/2), width: 100, height: 100), paint);
    //canvas.drawRect(Rect.fromPoints(Offset(20,20), Offset(220,120)), paint);
    //canvas.drawRect(Rect.fromCircle(center: Offset(150,150), radius: 75), paint);
    //canvas.drawRect(Rect.fromLTRB(0, 0, size.width/2, size.height/2), paint);
    canvas.drawRect(Rect.fromLTWH(10, 10, 120, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
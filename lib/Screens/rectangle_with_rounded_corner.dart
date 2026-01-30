import 'package:flutter/material.dart';

class RectangleWithRoundedCorner extends StatelessWidget {
  const RectangleWithRoundedCorner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.withValues(alpha: .5),
        child: CustomPaint(
          painter: RectangleWithRoundedCornerPainter(),
          size: Size(300, 300),
        ),
      ),
    );
  }
}
class RectangleWithRoundedCornerPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth =5;
    paint.color = Colors.green;
    paint.style = PaintingStyle.stroke;
    canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTRB(10, 10, 60, 60), Radius.circular(10)), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
     return false;
  }
}

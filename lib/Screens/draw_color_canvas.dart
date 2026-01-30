import 'package:flutter/material.dart';

class DrawColor extends StatelessWidget {
  const DrawColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //color: Colors.grey.withValues(alpha: .5),
          child: CustomPaint(
            size: Size(300, 300),
            painter: ColorPainter(),
          ),
        ),
      ),
    );
  }
}
class ColorPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 5;
    paint.style = PaintingStyle.stroke;
    canvas.clipRect(Offset.zero & size);
    canvas.drawColor(Colors.purple, BlendMode.difference);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
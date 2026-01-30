import 'package:flutter/material.dart';

class DrawColorCanvas extends StatelessWidget {
  const DrawColorCanvas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          color: Colors.grey.withValues(alpha: .5),
          child: CustomPaint(
            size: Size(300, 300),
            painter: ColorCanvasPainter(),
          ),
        ),
      ),
    );
  }
}
class ColorCanvasPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 5;
    paint.color = Colors.red;
    paint.style = PaintingStyle.stroke;
    canvas.clipRect(Offset.zero & size);
    canvas.drawColor(Colors.green, BlendMode.difference);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
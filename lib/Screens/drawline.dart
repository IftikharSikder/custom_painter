import 'package:flutter/material.dart';

class DrawLine extends StatelessWidget {
  const DrawLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(painter: LinePainter(isTop: true, isBottom: true, isLeft: true, isRight: true), size: Size(300, 300)),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  final bool isLeft;
  final bool isRight;
  final bool isTop;
  final bool isBottom;
  LinePainter({
    this.isLeft = false,
    this.isRight = false,
    this.isTop = false,
    this.isBottom = false,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 5;
    paint.color = Colors.blue;
    if (isTop) {
      canvas.drawLine(Offset(0, 0), Offset(size.width, 0), paint);
    }
    if (isBottom) {
      canvas.drawLine(Offset(0, size.height), Offset(size.width, size.height), paint);
    }
    if (isLeft) {
      canvas.drawLine(Offset(0, 0), Offset(0, size.height), paint);
    }
    if (isRight) {
      canvas.drawLine(Offset(size.width, 0), Offset(size.width, size.height), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

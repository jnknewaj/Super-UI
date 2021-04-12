import 'package:flutter/material.dart';

class FluidalShape extends CustomPainter {
  final Color color;

  FluidalShape(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = color;

    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width * 0.65, 0);
    path.quadraticBezierTo(
      size.width * 0.55,
      size.height * 0.1,
      size.width * 0.83,
      size.height * 0.1,
    );
    path.quadraticBezierTo(
      size.width * 0.90,
      size.height * 0.15,
      size.width * 0.8,
      size.height * 0.2,
    );
    path.quadraticBezierTo(
      size.width * 0.85,
      size.height * 0.25,
      size.width,
      size.height * 0.17,
    );
    path.lineTo(size.width, size.height * 0.17);

    // TODO: Draw your path

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class FluidalShapeTwo extends CustomPainter {
  final Color color;

  FluidalShapeTwo(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = color;

    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width * 0.65, 0);
    path.quadraticBezierTo(
      size.width * 0.55,
      size.height * 0.1,
      size.width * 0.83,
      size.height * 0.1,
    );
    path.quadraticBezierTo(
      size.width * 0.90,
      size.height * 0.15,
      size.width * 0.8,
      size.height * 0.2,
    );
    path.quadraticBezierTo(
      size.width * 0.85,
      size.height * 0.25,
      size.width,
      size.height * 0.17,
    );
    path.lineTo(size.width, size.height * 0.17);

    // TODO: Draw your path

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}


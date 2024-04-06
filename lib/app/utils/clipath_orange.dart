import 'dart:ui';

import 'package:flutter/material.dart';

class UpperWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFFFC8808);
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.15, size.width * 0.5, size.height * 0.25); 
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.35, size.width, size.height * 0.25); 
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

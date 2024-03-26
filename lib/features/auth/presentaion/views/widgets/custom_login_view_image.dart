import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width * 0.9991667, 0);
    path_0.lineTo(size.width, size.height * 0.8633333);
    path_0.quadraticBezierTo(size.width * 0.7108333, size.height * 0.7266667,
        size.width * 0.4983333, size.height * 0.9050000);
    path_0.quadraticBezierTo(size.width * 0.3050000, size.height * 1.0666667, 0,
        size.height * 0.9166667);

    canvas.drawPath(path_0, paintFill);

    // Layer 1

    Paint paintStroke = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

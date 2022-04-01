import 'package:dentelapp/resources/color.dart';
import 'package:flutter/material.dart';

class VerticalDottedLineCustomPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    var paint = Paint()
      ..strokeWidth = 2.0
      ..color = Colors.grey
      ..style = PaintingStyle.fill;

    var whiteCircle = Paint()
      ..strokeWidth = 2.0
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    var blueCircle = Paint()
      ..strokeWidth = 2.0
      ..color = firstMainScreenBackgroundColor
      ..style = PaintingStyle.fill;
    double dashLength = 10, dashSpace = 5;
    int count=0;
    double startX=120;
    double startY=370;
    double endX=startX;
    double endY=startY+dashLength;
    while (count<8) {
      canvas.drawLine(Offset(startX, startY), Offset(endX, endY), paint);
      startY += dashLength + dashSpace;
      endY=startY+dashLength;
      count++;
    }
    canvas.drawCircle(Offset(startX, endY), 10, whiteCircle);
    canvas.drawCircle(Offset(startX, endY), 5, blueCircle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>false;

}




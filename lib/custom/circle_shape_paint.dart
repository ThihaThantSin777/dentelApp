
import 'dart:ui';

import 'package:dentelapp/resources/color.dart';
import 'package:flutter/material.dart';

import '../resources/dimesion.dart';

class CircleShapePaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var firstCirclepaint = Paint()
      ..strokeWidth = 2.0
      ..color = fourthMainScreenBackgroundColor
      ..style = PaintingStyle.fill;

    var secondCirclepaint = Paint()
      ..strokeWidth = 2.0
      ..color = firstMainScreenBackgroundColor
      ..style = PaintingStyle.fill;

    var thirdCirclePaint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round //rounded points
      ..strokeWidth = 7;

    var forthCirclepaint = Paint()
      ..strokeWidth = 2.0
      ..color = thirdMainScreenBackgroundColor
      ..style = PaintingStyle.fill;



    //list of points
    var points = [
      //First Part
     const Offset(98, 358),
      const Offset(104, 327),
      const Offset(118, 288),
      const Offset(146, 254),
      const Offset(179, 238),
      const Offset(222, 228),
      const Offset(261, 235),
      const Offset(296, 256),
      const Offset(322, 282),
      const Offset(334, 312),
      const Offset(341, 355),

      //Sec Part
      const Offset(335, 399),
      const Offset(325, 434),
      const Offset(294, 463),
      const Offset(252, 487),
      const Offset(201, 487),
      const Offset(137, 463),
      const Offset(102, 402),
      const Offset(112, 432),

    ];
    //draw points on canvas

    canvas.drawCircle(const Offset(220, 360), 170, firstCirclepaint);
    canvas.drawCircle(const Offset(220, 360), 150, secondCirclepaint);
    canvas.drawPoints(PointMode.points, points, thirdCirclePaint);
    canvas.drawCircle(const Offset(220, 360), 90, forthCirclepaint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)=>false;

}

class CircleShapePainter extends StatelessWidget {
  const CircleShapePainter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        size:  const Size(double.infinity, double.infinity),
        foregroundPainter: CircleShapePaint(),
      ),
    );
  }
}

import 'package:dentelapp/resources/color.dart';
import 'package:flutter/material.dart';

import '../resources/constant.dart';

class CircleShapeView extends StatelessWidget {
  final CircleShapeVerify circleShapeVerify;
  final Color backgroundColor;
  final Widget child;
  final double radius;

  CircleShapeView(
      {required this.circleShapeVerify,
      this.backgroundColor = circleAvatarBackgroundColor,
      required this.child,
    this.radius=20,
      });

  @override
  Widget build(BuildContext context) {
    bool isImage = CircleShapeVerifier.isVerify(circleShapeVerify);
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.blue,
      backgroundImage: isImage
          ? const NetworkImage(
              'https://www.diethelmtravel.com/wp-content/uploads/2016/04/bill-gates-wealthiest-person.jpg',
            )
          : null,
      child: child ,
    );
  }
}

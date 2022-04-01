

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../resources/constant.dart';
import '../../resources/dimesion.dart';
import '../../widget/circle_shape_widget.dart';

class LightBulbFontAweSomeSessionView extends StatelessWidget {
  const LightBulbFontAweSomeSessionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: lightbulbPositionLeft,
      bottom: lightbulbPositionBottom,
      child: CircleAvatar(
        radius: fontAweSomeCircleRadius,
        backgroundColor: Colors.white,
        child: CircleShapeView(
          circleShapeVerify: CircleShapeVerify.icon,
          child: const FaIcon(
              FontAwesomeIcons.lightbulb
          ),
        ),
      ),
    );
  }
}
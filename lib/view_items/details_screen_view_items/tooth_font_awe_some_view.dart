

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../resources/constant.dart';
import '../../resources/dimesion.dart';
import '../../widget/circle_shape_widget.dart';

class ToothFontAweSomeSessionView extends StatelessWidget {
  const ToothFontAweSomeSessionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: toothPositionLeft,
      bottom: toothPositionBottom,
      child: CircleAvatar(
        radius: fontAweSomeCircleRadius,
        backgroundColor: Colors.white,
        child: CircleShapeView(
          circleShapeVerify: CircleShapeVerify.icon,
          child: const FaIcon(
              FontAwesomeIcons.tooth
          ),
        ),
      ),
    );
  }
}

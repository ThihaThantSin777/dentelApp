


import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../resources/color.dart';
import '../../resources/constant.dart';
import '../../resources/dimesion.dart';
import '../../widget/circle_shape_widget.dart';

class SyringeFontAweSomeSessionView extends StatelessWidget {
  const SyringeFontAweSomeSessionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: syringePositionLeft,
      top: syringePositionTop,
      child: Badge(
        position: BadgePosition.bottomEnd(),
        badgeContent: const Icon(Icons.check,color: Colors.white,size: regularText,),
        badgeColor: circleAvatarBackgroundColor,
        child: CircleShapeView(
          circleShapeVerify: CircleShapeVerify.icon,
          child: const FaIcon(
              FontAwesomeIcons.syringe
          ),
        ),
      ),
    );
  }
}

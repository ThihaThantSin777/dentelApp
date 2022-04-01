import 'package:dentelapp/resources/color.dart';
import 'package:flutter/material.dart';

import '../resources/dimesion.dart';

class PatientHorizontalView extends StatelessWidget {
  final Widget topPlaceWidget;
  final Widget midPlaceWidget;
  final Widget bottomPlaceWidget;
  final double width;
  final Color color;
  final double spacing;
  PatientHorizontalView(
      {
      required this.topPlaceWidget,
      required this.midPlaceWidget,
      required this.bottomPlaceWidget,
      required this.width,
        required this.spacing,
        required this.color,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spacing1x),
      child: Container(
        width: width,
        decoration:  BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(borderRadiusSmall))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: spacing2x,vertical: spacing1x),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topPlaceWidget,
               SizedBox(
                height: spacing,
              ),
              midPlaceWidget,
               SizedBox(
                height: spacing,
              ),
              bottomPlaceWidget,
            ],
          ),
        ),
      ),
    );
  }
}

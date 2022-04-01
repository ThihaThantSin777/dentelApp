import 'package:flutter/material.dart';

import '../../resources/dimesion.dart';

class TimeSessionView extends StatelessWidget {
  const TimeSessionView({
    Key? key,
    required this.hour,
    required this.minutes,
    required this.amOrPm,
  }) : super(key: key);

  final String hour;
  final String minutes;
  final String amOrPm;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 330,
      left: 165,
      child: Column(
        children: [
          Text('$hour : $minutes',style: const TextStyle(
              color: Colors.white,
              fontSize: regular4xText
          ),
          ),
          Text(amOrPm,style: const TextStyle(
              color: Colors.white30,
              fontSize: regular2xText
          ),
          ),
        ],
      ),
    );
  }
}
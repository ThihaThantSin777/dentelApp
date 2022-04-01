

import 'package:flutter/material.dart';

import '../resources/dimesion.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key,required this.title,required this.subTitle}) : super(key: key);
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children:  [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: regular2xText),
        ),
        const SizedBox(
          height: spacing1x,
        ),
        Text(
          subTitle,
          style: const TextStyle(color: Colors.white, fontSize: regularText),
        ),
      ],
    );
  }
}

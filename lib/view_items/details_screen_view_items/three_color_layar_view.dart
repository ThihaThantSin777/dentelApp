
import 'package:flutter/material.dart';

import '../../resources/color.dart';
import '../../resources/dimesion.dart';
import '../../widget/title_text_widget.dart';
class ThreeColorLayerSessionView extends StatelessWidget {
  const ThreeColorLayerSessionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          flex:3,
          child: TitleTextSessionView(),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: thirdMainScreenBackgroundColor,
          ),
        ),
        Expanded(
          child: Container(
            color: secondMainScreenBackgroundColor,
          ),
        ),
      ],
    );
  }
}

class TitleTextSessionView extends StatelessWidget {
  const TitleTextSessionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: spacing2x,vertical: spacing2x),
      color: firstMainScreenBackgroundColor,
      child: const TitleText(
        title: 'Office No.248',
        subTitle: '3 patients',
      ),
    );
  }
}

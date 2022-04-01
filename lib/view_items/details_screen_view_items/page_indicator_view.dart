

import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/vos/patient_vo.dart';

class PageIndicatorSessionView extends StatelessWidget {
  const PageIndicatorSessionView({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SmoothPageIndicator(

            controller: pageController, // PageController
            count: detailsPatientList.length,
            effect: const WormEffect(), // your preferred effect
            onDotClicked: (index) {
              pageController.animateToPage(index,
                  duration: const Duration(seconds: 2),
                  curve: Curves.bounceOut);
            }),
      ),
    );
  }
}
import 'package:dentelapp/data/vos/patient_vo.dart';
import 'package:dentelapp/resources/color.dart';
import 'package:flutter/material.dart';

import '../../resources/constant.dart';
import '../../resources/dimesion.dart';
import '../../widget/circle_shape_widget.dart';
import '../../widget/patient_horizontal_widget.dart';

class HorizontalListSessionView extends StatelessWidget {
  const HorizontalListSessionView({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 550,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.23,
        child: PageView.builder(
          controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: detailsPatientList.length,
            itemBuilder: (_, index) => PatientHorizontalView(
              spacing: spacing1x,
              color: Colors.white,
              topPlaceWidget: topPlaceWidget(detailsPatientList[index].text1),
              midPlaceWidget: midPlaceWidget(detailsPatientList[index].text2,detailsPatientList[index].text3),
              bottomPlaceWidget: bottomPlaceWidget(detailsPatientList[index].text4),
              width: 370,
            )
        ),
      ),
    );
  }

  Widget topPlaceWidget(String text1) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.timer,),
              Text(
                text1,
                style: const TextStyle(
                  fontSize: regularText,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            color:confirmBoxBackgroundColor,
            width: 75,
            height: 25,
            child: const Center(
              child: Text(
                'Confirmed',
                style: TextStyle(color: Colors.green,fontSize: smallText),
              ),
            ),
          ),
        ],
      );

  Widget midPlaceWidget(String text1,String text2) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(text1,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: regular3xText),),
        const SizedBox(height: spacing1x,),
        Text(
          text2,
          style: const TextStyle(
            fontSize: smallText,
          ),
        )
      ]);

  Widget bottomPlaceWidget(String text) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleShapeView(
            radius: regularText,
            circleShapeVerify: CircleShapeVerify.image,
            child: Container(),
          ),
          const SizedBox(
            width: smallText,
          ),
         Text(text,style:const TextStyle(
           fontWeight: FontWeight.w500,
           fontSize: regular2xText,
         ))
        ],
      );
}

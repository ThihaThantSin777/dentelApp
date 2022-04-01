import 'package:badges/badges.dart';
import 'package:dentelapp/resources/constant.dart';
import 'package:dentelapp/widget/title_text_widget.dart';
import 'package:flutter/material.dart';

import '../../data/vos/patient_vo.dart';
import '../../resources/color.dart';
import '../../resources/dimesion.dart';
import '../../widget/circle_shape_widget.dart';
import '../../widget/patient_horizontal_widget.dart';

class MyPatientsHorizontalListSession extends StatelessWidget {
  const MyPatientsHorizontalListSession({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: firstMainScreenBackgroundColor,
        child: const TextFieldAndProfileSessionView(),
      ),
    );
  }
}

class TextFieldAndProfileSessionView extends StatelessWidget {
  const TextFieldAndProfileSessionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: paddingLeftAndRight, right: paddingLeftAndRight, top: paddingTop, bottom: paddingBottom),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                width: textFieldWidth,
                child: TextFieldView(),
              ),
              Badge(
                  badgeContent: const Text(
                    '12',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: CircleShapeView(
                    circleShapeVerify: CircleShapeVerify.image,
                    child: Container(),
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
              MyPatientTextSessionView(),
              MyPatientDropDownBoxSessionView()
            ],
          ),
        ),
      ],
    );
  }
}

class MyPatientDropDownBoxSessionView extends StatelessWidget {
  const MyPatientDropDownBoxSessionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: const BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.all(Radius.circular(borderRadiusSmall))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const[
          Text(
            'Today',
            style: TextStyle(color: Colors.white, fontSize: regular1xText,fontWeight: FontWeight.w500),
          ),
          Icon(Icons.expand_more,color: Colors.white,)

        ],
      ),
    );
  }
}

class MyPatientTextSessionView extends StatelessWidget {
  const MyPatientTextSessionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TitleText(
      title: 'My Patients',
      subTitle: '12 total',
    );
  }
}

class TextFieldView extends StatelessWidget {
  const TextFieldView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: spacing2x, vertical: spacing2x),
          fillColor: Colors.white12,
          filled: true,
          hintText: "Search",
          suffixIcon: Icon(
            Icons.search,
            color: Colors.white60,
          ),
          hintStyle: TextStyle(fontSize: regularText, color: Colors.white60),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadiusMedium),
              )),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadiusMedium),
              ))),
    );
  }
}

class PatientHorizonalListSessionView extends StatelessWidget {
  const PatientHorizonalListSessionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      height: patientHorizonalListVieHeight,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: patientList.length,
          itemBuilder: (_, index) => PatientHorizontalView(
            spacing: spacing1x,
            color: patientHorizontalListBackgroundColor,
            topPlaceWidget: topPlaceWidget(patientList[index].text1,patientList[index].text2),
            midPlaceWidget: midPlaceWidget(patientList[index].text3),
            bottomPlaceWidget: bottomPlaceWidget(),
            width: patientHorizonalListVieWidth,
          )
      ),
    );
  }

  Widget topPlaceWidget(String text1, String text2) => Row(
    children: [
      Text(
        text1,
        style: const TextStyle(
          color: Colors.white,
          fontSize: regular1xText,
        ),
      ),
      Text(
        text2,
        style: const TextStyle(
          color: Colors.white54,
          fontSize: regularText,
        ),
      ),
    ],
  );

  Widget midPlaceWidget(String text) => Row(children: [
    const Icon(
      Icons.timer,
      color: Colors.white,
    ),
    Text(
      text,
      style: const TextStyle(
        color: Colors.white54,
        fontSize: regularText,
      ),
    )
  ]);

  Widget bottomPlaceWidget() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleShapeView(
            radius: regularText,
            circleShapeVerify: CircleShapeVerify.image,
            child: Container(),
          ),
          const SizedBox(
            width: smallText,
          ),
          CircleShapeView(
            radius: smallCircleAvaterRadius,
            circleShapeVerify: CircleShapeVerify.image,
            child: Container(),
          ),
          const SizedBox(
            width: smallText,
          ),
          CircleShapeView(
            radius: smallCircleAvaterRadius,
            circleShapeVerify: CircleShapeVerify.image,
            child: Container(),
          ),
        ],
      ),
      CircleShapeView(
        radius: smallCircleAvaterRadius,
        circleShapeVerify: CircleShapeVerify.icon,
        child: const Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
    ],
  );
}

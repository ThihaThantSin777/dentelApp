import 'package:badges/badges.dart';
import 'package:dentelapp/resources/color.dart';
import 'package:dentelapp/resources/constant.dart';
import 'package:dentelapp/resources/dimesion.dart';
import 'package:dentelapp/widget/circle_shape_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../custom/circle_shape_paint.dart';
import '../data/vos/patient_vo.dart';
import '../view_items/details_screen_view_items/horizontal_list_view.dart';
import '../view_items/details_screen_view_items/page_indicator_view.dart';
import '../view_items/details_screen_view_items/syringe_font_awe_some_view.dart';
import '../view_items/details_screen_view_items/three_color_layar_view.dart';
import '../view_items/details_screen_view_items/time_session_view.dart';
import '../view_items/details_screen_view_items/lighbulb_font_awe_some_view.dart';
import '../view_items/details_screen_view_items/tooth_font_awe_some_view.dart';

class DetailsPage extends StatelessWidget {
  var pageController = PageController(
    viewportFraction: pageControllerViewportFraction,
    initialPage: pageControllerInitialPage,
  );

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    int twentyFourHour = dateTime.hour;
    String hour = (twentyFourHour - 12).toString();
    String minutes = (dateTime.minute).toString();
    String amOrPm = (twentyFourHour > 13) ? 'pm' : 'am';
    return Scaffold(
      backgroundColor: firstMainScreenBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: firstMainScreenBackgroundColor,
        centerTitle: true,
        elevation: 0,
        title: const Text('Today'),
        leading: const Icon(
          Icons.chevron_left,
          color: Colors.white,
          size: spacing3x,
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
            size: spacing3x,
          ),
          SizedBox(
            width: spacing3x,
          ),
          Icon(
            Icons.notes,
            size: spacing3x,
            color: Colors.white,
          ),
          SizedBox(
            width: spacing3x,
          )
        ],
      ),
      body: Stack(
        children: [
          const ThreeColorLayerSessionView(),
          const CircleShapePainter(),
          TimeSessionView(hour: hour, minutes: minutes, amOrPm: amOrPm),
          HorizontalListSessionView(
            pageController: pageController,
          ),
          PageIndicatorSessionView(pageController: pageController),
          const ToothFontAweSomeSessionView(),
          const LightBulbFontAweSomeSessionView(),
          const SyringeFontAweSomeSessionView(),
        ],
      ),
    );
  }
}

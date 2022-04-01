import 'package:dentelapp/data/vos/patient_vo.dart';
import 'package:dentelapp/page/details_page.dart';
import 'package:dentelapp/resources/color.dart';
import 'package:dentelapp/resources/constant.dart';
import 'package:dentelapp/resources/dimesion.dart';
import 'package:dentelapp/widget/patient_horizontal_widget.dart';
import 'package:flutter/material.dart';
import '../custom/vertical_dotted_line_painted.dart';
import '../view_items/home_screen_view_items/home_screen_bottom_navigation_bar_view.dart';
import '../view_items/home_screen_view_items/my_patients_horizontal_list_view.dart';
import '../view_items/home_screen_view_items/time_and_event_list_view.dart';
import '../widget/circle_shape_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size:  const Size(double.infinity, double.infinity),
      foregroundPainter: VerticalDottedLineCustomPaint(),
      child: Scaffold(
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () => print("Click"),
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: const HomeScreenBottomNavigationBarSession(),
        body: Stack(
          children: [
            Column(
              children:  [
              const  MyPatientsHorizontalListSession(),
                TimeAndEventListSession(
                  onTap: (isDisable)=>_navigateToHomeScreen(context, isDisable),
                )
              ],
            ),
            const Positioned(
              top: topPositioned,
              child: PatientHorizonalListSessionView(),
            ),
          ],
        ),
      ),
    );
  }
  void _navigateToHomeScreen(context,bool isDisable){
  if(!isDisable){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return  DetailsPage();
    }));
  }
  }
}



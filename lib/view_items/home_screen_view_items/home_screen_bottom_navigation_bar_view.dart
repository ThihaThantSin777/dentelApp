import 'package:flutter/material.dart';

import '../../resources/dimesion.dart';

class HomeScreenBottomNavigationBarSession extends StatelessWidget {
  const HomeScreenBottomNavigationBarSession({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      type: BottomNavigationBarType.fixed,
      items: const[
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.home,size: bottomNavigateBarIconSize,),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.calendar_today,size: bottomNavigateBarIconSize,),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.timer,size: bottomNavigateBarIconSize,),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.person_rounded,size: bottomNavigateBarIconSize,),
        ),
      ],

    );
  }
}
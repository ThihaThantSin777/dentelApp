import 'package:dentelapp/page/home_page.dart';
import 'package:flutter/material.dart';

import 'custom/vertical_dotted_line_painted.dart';

main()=>runApp(MyApp());


    class MyApp extends StatelessWidget {
      const MyApp({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return  const MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  HomePage(),
        );
      }
    }

import 'package:advanceflutter_exam/screens/home/view/home_screen.dart';
import 'package:advanceflutter_exam/screens/marks/view/marks_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/',page: () => HomeScreen(),),
        GetPage(name: '/marks',page: () => MarksScreen(),),
      ],
    ),
  );
}
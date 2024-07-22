import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Flutter_GetX_Named_Routing/first_Page.dart';
import 'package:getx/Flutter_GetX_Named_Routing/second_Page.dart';
import 'package:getx/Flutter_GetX_Named_Routing/third_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "first",
      defaultTransition: Transition.rightToLeft,
      getPages: [
        GetPage(name: "/first", page: () => FirstPage()),
        GetPage(name: "/second", page: () => SecondPage()),
        GetPage(name: "/third", page: () => ThirdPage()),
      ],
    );
  }
}

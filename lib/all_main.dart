import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetX_Controller/main.dart';
import 'package:getx/Reactive_State_Manager/movie_main.dart';
import 'package:getx/Reactive_State_Manager_Using_Obx/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: Main(),
    );
  }
}

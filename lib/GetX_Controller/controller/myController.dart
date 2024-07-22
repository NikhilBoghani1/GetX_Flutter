import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mycontroller extends GetxController {
  var count = 0.obs;

  incrementCounter() {
    count++;
  }

  decrementCounter() {
    count--;
  }
}

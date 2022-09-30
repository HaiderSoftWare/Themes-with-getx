import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  bool stateTheme = false;
  void changeTheme() {
    //convert state bool
    stateTheme = !stateTheme;

    //condiation
    stateTheme
        ? Get.changeTheme(ThemeData.dark())
        : Get.changeTheme(ThemeData.light());
    update();
  }
}

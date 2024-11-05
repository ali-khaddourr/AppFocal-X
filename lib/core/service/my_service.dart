import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyService extends GetxService {

 static late SharedPreferences shared;

  Future<MyService> initialize() async {
    shared = await SharedPreferences.getInstance();
    return this;

  }
}

Future initialServices() async {
  await Get.putAsync(() => MyService().initialize());
  bool isDarkMode = MyService.shared.getBool('isDarkMode')?? Get.isDarkMode;
  Get.changeTheme(isDarkMode ? ThemeData.dark():ThemeData.light()  );
}

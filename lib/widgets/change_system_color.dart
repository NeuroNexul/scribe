import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void changeSysytemColor({
  Brightness statusBarBrightness = Brightness.dark,
  Color statusBarColor = Colors.transparent,
  Brightness statusBarIconBrightness = Brightness.light,
  Color systemNavigationBarColor = Colors.black,
  bool systemNavigationBarContrastEnforced = false,
  Color systemNavigationBarDividerColor = Colors.transparent,
  Brightness systemNavigationBarIconBrightness = Brightness.light,
  bool systemStatusBarContrastEnforced = false,
}) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // System Status Bar
    statusBarBrightness: statusBarBrightness,
    statusBarColor: statusBarColor,
    statusBarIconBrightness: statusBarIconBrightness,

    // System Navigation Bar
    systemNavigationBarColor: systemNavigationBarColor,
    systemNavigationBarContrastEnforced: systemNavigationBarContrastEnforced,
    systemNavigationBarDividerColor: systemNavigationBarDividerColor,
    systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
    systemStatusBarContrastEnforced: systemStatusBarContrastEnforced,
  ));
}

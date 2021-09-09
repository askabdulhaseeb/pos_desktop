import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';

class CustomWindowSize {
  static Future<dynamic> isFullScreen() async => DesktopWindow.getFullScreen();
  static Future<bool> setCustomWindowSize({
    double minWidth = 500,
    double minHeight = 500,
  }) async {
    try {
      // ignore: parameter_assignments
      if (minHeight < 500) minHeight = 500;
      // ignore: parameter_assignments
      if (minWidth < 500) minWidth = 500;
      await DesktopWindow.setMinWindowSize(Size(minWidth, minHeight));
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<void> setFixedWindowSize(
      {double width = 500, double height = 500}) async {
    await DesktopWindow.setMinWindowSize(Size(width, height));
    await DesktopWindow.setMaxWindowSize(Size(width, height));

  }

  static void setCustomWindowMaxSize() {}

  static Future<bool> setFullScreen() async {
    try {
      await DesktopWindow.setFullScreen(true);
      return true;
    } catch (e) {
      return false;
    }
  }
}

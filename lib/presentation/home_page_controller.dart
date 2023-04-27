import 'dart:math';

import 'package:demo/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// HomePage screen controller
class HomePageController extends GetxController {
  /// scaffold background color observable
  final Rx<Color> scaffoldBackgroundColor = Colors.white.obs;
  /// text color observable
  final Rx<Color> textColor = Colors.black.obs;

  /// change colors of scaffold background and text
  void changeColor() {
    final color = _generateRandomColor();
    textColor.value = _isDarkColor(color) ? Colors.white : Colors.black;
    scaffoldBackgroundColor.value = _generateRandomColor();
  }

  Color _generateRandomColor() {
    final random = Random();

    return Color.fromRGBO(
      random.nextInt(Constants.maxColorNo),
      random.nextInt(Constants.maxColorNo),
      random.nextInt(Constants.maxColorNo),
      1,
    );
  }

  bool _isDarkColor(Color color) {
    final double luminance = color.computeLuminance();

    // if the luminance is less than 0.5 indicates a dark color
    return luminance < Constants.defaultLuminance;
  }
}

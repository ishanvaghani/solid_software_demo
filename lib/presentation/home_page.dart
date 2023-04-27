import 'package:demo/presentation/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// HomePage - Landing Page of app
class HomePage extends StatelessWidget {
  final _controller = Get.find<HomePageController>();

  /// Public constructor
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GestureDetector(
        onTap: _controller.changeColor,
        child: Scaffold(
          backgroundColor: _controller.scaffoldBackgroundColor.value,
          body: Center(
            child: Text(
              "Hello there",
              style: TextStyle(color: _controller.textColor.value),
            ),
          ),
        ),
      );
    });
  }
}

import 'package:demo/presentation/home_page_controller.dart';
import 'package:get/get.dart';

/// initializes get dependencies
void init() {
  Get.lazyPut(() => HomePageController());
}

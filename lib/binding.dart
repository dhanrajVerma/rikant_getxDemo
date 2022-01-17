import 'package:get/get.dart';

import 'controller/validation_controller.dart';

class HomeBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

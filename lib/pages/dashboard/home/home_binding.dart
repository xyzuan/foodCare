import 'package:foodcarev1/pages/splash/splash_controller.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(),
    );
  }
}

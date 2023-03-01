import 'package:foodcarev1/pages/splash/splash_controller.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';
import 'home/home_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

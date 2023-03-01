import 'package:foodcarev1/pages/dashboard/dashboard_binding.dart';
import 'package:foodcarev1/pages/dashboard/dashboard_page.dart';
import 'package:foodcarev1/pages/splash/splash_binding.dart';
import 'package:foodcarev1/pages/splash/splash_page.dart';
import 'package:foodcarev1/routes/page_names.dart';
import 'package:get/get.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: PageName.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: PageName.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 250),
    ),
  ];
}

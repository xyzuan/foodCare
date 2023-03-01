import 'package:flutter/material.dart';
import 'package:foodcarev1/pages/dashboard/dashboard_controller.dart';
import 'package:foodcarev1/pages/dashboard/home/home_page.dart';
import 'package:foodcarev1/themes/resources.dart';
import 'package:get/get.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Resources.color.primaryText,
            selectedItemColor: Resources.color.primaryText,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Resources.color.primaryBg,
            landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              fontFamily: 'PlusJakartaSans',
            ),
            elevation: 8,
            items: [
              _bottomNavigationBarItem(
                icon: Icons.home_filled,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: Icons.notes,
                label: 'Donate',
              ),
              _bottomNavigationBarItem(
                icon: Icons.notifications,
                label: 'Notif',
              ),
              _bottomNavigationBarItem(
                icon: Icons.person_rounded,
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}

_bottomNavigationBarItem({IconData? icon, String? label}) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}

import 'package:crop_guard/pages/application/controller.dart';
import 'package:crop_guard/pages/chart_page/index.dart';
import 'package:crop_guard/pages/home/index.dart';
import 'package:crop_guard/pages/plant/explore/view.dart';
import 'package:crop_guard/pages/plant/scan/index.dart';
import 'package:crop_guard/pages/profile/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplicationPage extends StatelessWidget {
  const ApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ApplicationController());
    return GetBuilder<ApplicationController>(
      builder: (context) {
        return Scaffold(
           bottomNavigationBar: BottomNavigationBar(
        items: [
          _bottomNavigationBarItem(
            icon: CupertinoIcons.home,
            label: "Home",
          ),
          _bottomNavigationBarItem(
            icon: CupertinoIcons.search,
            label: "Search",
          ),
          _bottomNavigationBarItem(
            icon: CupertinoIcons.camera,
            label: "Camera",
          ),
          _bottomNavigationBarItem(
            icon: CupertinoIcons.chart_bar_alt_fill,
            label: "Statistics",
          ),
          _bottomNavigationBarItem(
            icon: CupertinoIcons.person,
            label: "Account",
          ),
        ],
        onTap: controller.changeTabIndex,
        currentIndex: controller.state.tabIndex.value,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
      ),
      
          body: IndexedStack(
            index: controller.state.tabIndex.value,
            children: [
              HomePage(),
              ExplorePage(),
              ScanPage(),
              ChartPage(),
              ProfilePage(),
            ],
          ),
        );
      },
    );
  }
   _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
      ),
      label: label,
    );
  }
}

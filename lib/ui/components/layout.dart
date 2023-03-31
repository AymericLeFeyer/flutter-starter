import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:starter/services/layout.service.dart';
import 'package:starter/ui/pages/example.page.dart';
import 'package:starter/utils/constants.dart';

class LayoutPage extends StatelessWidget {
  LayoutPage({Key? key}) : super(key: key);

  static final List<Widget> _widgetOptions = <Widget>[
    Text("Page 1"),
    Text("Page 2"),
    ExamplePage()
  ];

  final List<PersistentBottomNavBarItem> _navBarsItems = [
    PersistentBottomNavBarItem(icon: Icon(Icons.abc), title: "Page 1"),
    PersistentBottomNavBarItem(icon: Icon(Icons.swap_calls), title: "Page 2"),
    PersistentBottomNavBarItem(icon: Icon(Icons.expand), title: "Example"),
  ];

  final LayoutService layoutService = Get.find<LayoutService>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => PersistentTabView(
          context,
          screens: _widgetOptions,
          controller: layoutService.tabController,
          popAllScreensOnTapAnyTabs: true,
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style15,
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(0.0),
            colorBehindNavBar: Colors.white,
          ),
          backgroundColor: MyColors.background,
          items: _navBarsItems,
        ));
  }
}

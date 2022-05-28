import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../Account Module/View Controller/account_page.dart';
import '../../Bookings Module/View Controller/bookings_page.dart';
import '../../Dashboard Module/View Controller/dashboard_page.dart';
import '../../Home Module/View Controller/home_page.dart';
import 'navigation_view_model.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({
    Key? key,
  }) : super(key: key);

  final navigationController = Get.put(NavigationController());
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      DashboardPage(),
      BookingsPage(),
      const AccountPage(),
    ];
  }

  RxInt cueeere = 0.obs;

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [];
  }

  bool keyboardVisible = false;
  @override
  Widget build(BuildContext context) {
    keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;
    return Obx(() => PersistentTabView(
          context,
          controller: _controller,
          padding: const NavBarPadding.all(10),
          navBarHeight: 60,
          screens: _buildScreens(),
          items: [
            PersistentBottomNavBarItem(
              icon: Image(
                  image: const AssetImage("assets/icons/home_icon.png"),
                  color: navigationController.currentIndex.value == 0
                      ? const Color(0xff19E6FF)
                      : Colors.white),
              title: ("Home"),
              activeColorPrimary: Colors.white,
              textStyle: const TextStyle(fontSize: 14),
              activeColorSecondary: Colors.black,
              inactiveColorPrimary: Colors.white,
            ),
            PersistentBottomNavBarItem(
                icon: Image(
                  image: const AssetImage("assets/icons/dashboard_icon.png"),
                  color: navigationController.currentIndex.value == 1
                      ? const Color(0xff19E6FF)
                      : Colors.white,
                ),
                title: ("Dashboard"),
                textStyle: const TextStyle(fontSize: 14),
                activeColorPrimary: Colors.white,
                activeColorSecondary: Colors.black,
                inactiveColorPrimary: Colors.white),
            PersistentBottomNavBarItem(
                icon: Image(
                  image: const AssetImage("assets/icons/bookings_icon.png"),
                  color: _controller.index == 2
                      ? const Color(0xff19E6FF)
                      : Colors.white,
                ),
                title: ("Bookings"),
                activeColorPrimary: Colors.white,
                textStyle: const TextStyle(color: Colors.black),
                activeColorSecondary: Colors.black,
                inactiveColorPrimary: Colors.white),
            PersistentBottomNavBarItem(
                icon: Image(
                  image: const AssetImage("assets/icons/profile_icon.png"),
                  color: navigationController.currentIndex.value == 3
                      ? const Color(0xff19E6FF)
                      : Colors.white,
                ),
                title: ("Profile"),
                activeColorPrimary: Colors.white,
                textStyle: const TextStyle(fontSize: 14),
                activeColorSecondary: Colors.black,
                inactiveColorPrimary: Colors.white),
          ],
          confineInSafeArea: true,
          backgroundColor: const Color(0xff4623F0), // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset:
              true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true,
          // Default is true.
          hideNavigationBarWhenKeyboardShows:
              true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: const NavBarDecoration(
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          onItemSelected: (index) {
            navigationController.currentIndex.value = index;
          },
          navBarStyle: NavBarStyle
              .style10, // Choose the nav bar style with this property.
        ));
  }
}

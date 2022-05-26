import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../Account Module/View Controller/account_page.dart';
import '../../Bookings Module/View Controller/bookings_page.dart';
import '../../Dashboard Module/View Controller/dashboard_page.dart';
import '../../Home Module/View Controller/home_page.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({
    Key? key,
  }) : super(key: key);

  PersistentTabController? _controller;

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      DashboardPage(),
      BookingsPage(),
      const AccountPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Colors.white,
        textStyle: const TextStyle(color: Colors.blue),
        activeColorSecondary: const Color(0xff19E6FF),
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.speed),
          title: ("Settings"),
          activeColorPrimary: Colors.white,
          textStyle: const TextStyle(color: Colors.black),
          activeColorSecondary: const Color(0xff19E6FF),
          inactiveColorPrimary: Colors.white),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.insert_invitation),
          title: ("Settings"),
          activeColorPrimary: Colors.white,
          textStyle: const TextStyle(color: Colors.black),
          activeColorSecondary: const Color(0xff19E6FF),
          inactiveColorPrimary: Colors.white),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          title: ("Settings"),
          textStyle: const TextStyle(color: Colors.black),
          activeColorPrimary: Colors.white,
          activeColorSecondary: const Color(0xff19E6FF),
          inactiveColorPrimary: Colors.white),
    ];
  }

  bool keyboardVisible = false;
  @override
  Widget build(BuildContext context) {
    keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;
    return PersistentTabView(
      context,
      controller: _controller,
      padding: const NavBarPadding.all(10),
      navBarHeight: 60,
      screens: _buildScreens(),
      items: _navBarsItems(),
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
      navBarStyle:
          NavBarStyle.style10, // Choose the nav bar style with this property.
    );
  }
}

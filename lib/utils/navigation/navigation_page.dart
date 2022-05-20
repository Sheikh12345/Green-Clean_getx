import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:get/get.dart';
import 'navigation_controller.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GetBuilder<NavigationController>(
        init: NavigationController(),
        builder: (controller) => Scaffold(
              body: controller.navigationWidgets[controller.selectedIndex],
              bottomNavigationBar: BottomNavyBar(
                containerHeight: 60,
                selectedIndex: controller.selectedIndex,
                showElevation: true, // use this to remove appBar's elevation
                onItemSelected: controller.setIndex,
                backgroundColor: theme.primaryColor,
                items: [
                  BottomNavyBarItem(
                    icon: const Icon(Icons.home),
                    title: const Text('Home'),
                    activeColor: Colors.white,
                  ),
                  BottomNavyBarItem(
                    icon: const Icon(Icons.speed),
                    title: const Text('Dashboard'),
                    activeColor: Colors.white,
                  ),
                  BottomNavyBarItem(
                      icon: const Icon(Icons.insert_invitation),
                      title: const Text('Bookings'),
                      activeColor: Colors.white),
                  BottomNavyBarItem(
                      icon: const Icon(Icons.person),
                      title: const Text('Account'),
                      activeColor: Colors.white),
                ],
              ),
            ));
  }
}

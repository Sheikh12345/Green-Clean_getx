import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Dashboard%20Module/View%20Model/dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(),
        builder: (controller) => WillPopScope(
            child: controller.getWidgetForIndex(),
            onWillPop: () async {
              if (controller.dashboardStackIndex != 0) {
                controller.setIndex(controller.dashboardStackIndex - 1);
              }
              return false;
            }));
  }
}

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:green_and_clean/views/dashboard/dashboard_stack/properties_list_page.dart';

class DashboardController extends GetxController {
  int dashboardStackIndex = 0;

  RxInt propertiesListType = 0.obs;

  changePropertyListType(int index) {
    propertiesListType.value = index;
  }

  setIndex(int index) {
    dashboardStackIndex = index;
    update();
  }

  getWidgetForIndex() {
    switch (dashboardStackIndex) {
      case 0:
        return PropertiesListPage();
      default:
        //TODO implement reset page
        return SizedBox();
    }
  }
}

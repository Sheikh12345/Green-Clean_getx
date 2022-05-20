import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../View/manage_offers.dart';
import '../View/properties_list_page.dart';

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
        return const PropertiesListPage();
      case 1:
        return const ManageOffers();
      default:
        //TODO implement reset page
        return const SizedBox();
    }
  }
}

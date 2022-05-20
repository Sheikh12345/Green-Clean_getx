import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../View/cleaners_list.dart';
import '../View/cleaning_category_page.dart';
import '../View/cleaning_order_summary.dart';
import '../View/cleaning_property_page.dart';
import '../View/cleaning_schedule_page.dart';
import '../View/cleaning_type_page.dart';
import '../View/clearner_detail_page.dart';

class HomeController extends GetxController {
  RxList cleaningAddons = RxList(
      ['Fridge', 'Microwave', 'Cabinets', 'Ironing', 'Washing', 'Drying']);

  RxInt bedrooms = 0.obs;
  RxInt bathrooms = 0.obs;
  int homeStackIndex = 0;

  RxInt scheduleType = 0.obs;

  setIndex(int index) {
    homeStackIndex = index;
    update();
  }

  getWidgetForIndex() {
    switch (homeStackIndex) {
      case 0:
        return const CleaningCategoryPage();
      case 1:
        return const CleaningTypePage(
          imageURL: "assets/images/house_bg.png",
        );
      case 2:
        return const CleaningPropertyPage();
      case 3:
        return const CleaningSchedulePage();
      case 4:
        return const CleanersList();
      case 5:
        return const CleanerDetailPage();
      case 6:
        return const CleaningOrderSummary();
      default:
        //TODO implement reset page
        return const SizedBox();
    }
  }
}

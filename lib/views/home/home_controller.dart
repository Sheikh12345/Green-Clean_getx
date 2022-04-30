import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:green_and_clean/views/home/home_stack/add_payment_page.dart';
import 'package:green_and_clean/views/home/home_stack/cleaners_list.dart';
import 'package:green_and_clean/views/home/home_stack/cleaning_category_page.dart';
import 'package:green_and_clean/views/home/home_stack/cleaning_order_summary.dart';
import 'package:green_and_clean/views/home/home_stack/cleaning_property_page.dart';
import 'package:green_and_clean/views/home/home_stack/cleaning_schedule_page.dart';
import 'package:green_and_clean/views/home/home_stack/cleaning_type_page.dart';
import 'package:green_and_clean/views/home/home_stack/clearner_detail_page.dart';
import 'package:green_and_clean/views/home/home_stack/order_success_page.dart';

class HomeController extends GetxController {
  RxList cleaningAddons = RxList(
      ['Fridge', 'Microwave', 'Cabinets', 'Ironing', 'Washing', 'Drying']);

  RxInt bedrooms = 0.obs;
  RxInt bathrooms = 0.obs;
  int homeStackIndex = 0;

  setIndex(int index) {
    homeStackIndex = index;
    update();
  }

  getWidgetForIndex() {
    switch (homeStackIndex) {
      case 0:
        return CleaningCategoryPage();
      case 1:
        return CleaningTypePage();
      case 2:
        return CleaningPropertyPage();
      case 3:
        return CleaningSchedulePage();
      case 4:
        return CleanersList();
      case 5:
        return CleanerDetailPage();
      case 6:
        return CleaningOrderSummary();
      default:
        //TODO implement reset page
        return SizedBox();
    }
  }
}

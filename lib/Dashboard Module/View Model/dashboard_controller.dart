import 'package:get/get.dart';

class DashboardController extends GetxController {
  int dashboardStackIndex = 0;

  RxInt propertiesListType = 0.obs;

  changePropertyListType(int index) {
    propertiesListType.value = index;
  }

  // setIndex(int index) {
  //   dashboardStackIndex = index;
  //   update();
  // }

  // getWidgetForIndex() {
  //   switch (dashboardStackIndex) {
  //     case 0:
  //       return const PropertiesListPage();
  //     case 1:
  //       return const ManageOffers();
  //     default:
  //       //TODO implement reset page
  //       return const SizedBox();
  //   }
  // }
}

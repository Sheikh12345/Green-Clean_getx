import 'package:get/get.dart';

class AccountController extends GetxController {
  int accountStackIndex = 0;

  RxInt bookingType = 0.obs;

  changeBookingType(int index) {
    bookingType.value = index;
  }

  // setIndex(int index) {
  //   accountStackIndex = index;
  //   update();
  // }

  // getWidgetForIndex() {
  //   switch (accountStackIndex) {
  //     case 0:
  //       return const AccountsList();
  //     case 1:
  //       return const ProfilePage();
  //     case 2:
  //       return BookingsPage();
  //     default:
  //       //TODO implement reset page
  //       return const SizedBox();
  //   }
  // }
}

import 'package:get/get.dart';

class BookingsController extends GetxController {
  int bookingStackIndex = 0;

  RxInt bookingType = 0.obs;

  changeBookingType(int index) {
    bookingType.value = index;
  }

  // setIndex(int index) {
  //   bookingStackIndex = index;
  //   update();
  // }

  // getWidgetForIndex() {
  //   switch (bookingStackIndex) {
  //     case 0:
  //       return const BookingsList();
  //     case 1:
  //       return const BookingDetail();
  //     case 2:
  //       return const ReviewPage();
  //     default:
  //       //TODO implement reset page
  //       return const SizedBox();
  //   }
  // }
}

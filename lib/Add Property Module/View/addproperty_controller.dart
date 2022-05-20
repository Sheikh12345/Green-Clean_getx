import 'package:get/get.dart';

class AddPropertyController extends GetxController {
  RxInt propertiesListType = 0.obs;

  changePropertyListType(int index) {
    propertiesListType.value = index;
  }
}

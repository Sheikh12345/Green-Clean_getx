import 'package:get/get.dart';
import 'package:green_and_clean/Utils/database.dart';

class AppServiceBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Database());
  }
}

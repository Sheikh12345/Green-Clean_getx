import 'package:get/get.dart';
import 'package:green_and_clean/Utils/database.dart';
import 'package:green_and_clean/Home%20Module/View%20Model/user_controller.dart';

class AppServiceBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(UserController());
    Get.lazyPut(() => Database());
  }
}

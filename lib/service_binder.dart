
import 'package:get/get.dart';
import 'package:green_and_clean/controller/database.dart';
import 'package:green_and_clean/controller/user_controller.dart';

class AppServiceBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(UserController());
    Get.lazyPut(() => Database());
  }

}
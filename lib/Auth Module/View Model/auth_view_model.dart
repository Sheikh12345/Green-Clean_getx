import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isPasswordVisible = true.obs;

  void changePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}

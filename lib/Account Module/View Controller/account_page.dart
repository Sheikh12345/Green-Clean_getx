import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Account%20Module/View%20Model/account_controller.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
        init: AccountController(),
        builder: (controller) => WillPopScope(
            child: controller.getWidgetForIndex(),
            onWillPop: () async {
              if (controller.accountStackIndex != 0) {
                controller.setIndex(controller.accountStackIndex - 1);
              }
              return false;
            }));
  }
}

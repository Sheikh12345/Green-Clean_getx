import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/home/home_controller.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller)=>WillPopScope(child: controller.getWidgetForIndex(), onWillPop: ()async{
          if(controller.homeStackIndex!=0){
            controller.setIndex(controller.homeStackIndex-1);
          }
          return false;
        }));
  }
}

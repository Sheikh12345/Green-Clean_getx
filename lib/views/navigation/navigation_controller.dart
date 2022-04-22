

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_page.dart';

class NavigationController extends GetxController{
  int selectedIndex=0;

  List<Widget> navigationWidgets=[
    HomePage(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
    SizedBox()
  ];

  setIndex(int index){
    selectedIndex=index;
    update();
  }
}
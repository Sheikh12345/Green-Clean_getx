import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/home/home_controller.dart';

class AddPaymentMethod extends StatelessWidget {
  const AddPaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme=Theme.of(context);
    return Container(
      color: theme.primaryColor,
      child: Column(children: [
        const SizedBox(height: kToolbarHeight/2,),
        Row(children: [
          IconButton(onPressed: (){
            Get.find<HomeController>().setIndex(Get.find<HomeController>().homeStackIndex-1);
          }, icon: const Icon(Icons.arrow_back_sharp,color: Colors.white,)),
          const Expanded(child: SizedBox(),flex: 2,),
          const AutoSizeText("Add payment Method",style: TextStyle(color: Colors.white,fontSize: 20),),
          const Expanded(child: SizedBox(),flex: 3,)
        ],),
        SizedBox(height: height*0.02,),
        Expanded(child: Container(
          padding: EdgeInsets.symmetric(horizontal: width*0.05),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:  BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            SizedBox(height: height*0.03,),
            Center(child: const AutoSizeText("Please add credit card or debit card detail",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16),)),
            SizedBox(height: height*0.02,),
              Card(child: Column(children: [],),)
          ],),
        ))
      ],),
    );
  }
}

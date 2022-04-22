import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/home/home_controller.dart';

class CleaningOrderSummary extends StatelessWidget {
  const CleaningOrderSummary({Key? key}) : super(key: key);

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
          const AutoSizeText("Summary",style: TextStyle(color: Colors.white,fontSize: 20),),
          const Expanded(child: SizedBox(),flex: 3,)
        ],),
        SizedBox(height: height*0.02,),
        Expanded(child: Container(
          padding: EdgeInsets.symmetric(horizontal: width*0.05),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:  BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25))
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: height*0.05,),
              Card(
                elevation: 8,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.grey[300]!))),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Material(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(100)),
                                  child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(100),
                                      child: Image.asset(
                                        "assets/person.png",
                                        width: width * 0.18,
                                      )),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AutoSizeText("4.0"),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 14,
                                    ),
                                    AutoSizeText("(125)")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 7,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                      children: [
                                        AutoSizeText(
                                          "Mayra Q.",
                                          presetFontSizes: [20, 18],
                                        ),
                                        AutoSizeText(
                                          "Miami, Florida",
                                          presetFontSizes: [16,14],
                                        ),
                                      ],
                                    )),
                                Icon(
                                  Icons.forum_sharp,
                                  color: theme.primaryColor,
                                ),
                              ],
                            ),
                            SizedBox(height: height*0.01,),
                            Center(child: AutoSizeText("House/Standard Cleaning",presetFontSizes: [14,12],),),
                            SizedBox(height: height*0.01,),
                            Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.location_on_sharp,size: 14,),AutoSizeText("3.3 Mi")],),
                            SizedBox(height: height*0.02,),
                            Center(child: AutoSizeText("English/Spanish"),),
                            SizedBox(height: height*0.03,),
                          ],
                        ))
                  ],
              ),
                ),),
              SizedBox(height: height*0.03,),
              Card(
                elevation: 8,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                child: Column(children: [
                  SizedBox(height: height*0.01,),
                Center(child: AutoSizeText("Order Summary",presetFontSizes: [18,16],),),
                SizedBox(height: height*0.01,),
                Center(child: AutoSizeText("House/Standard Cleaning",presetFontSizes: [14,12],),),
                SizedBox(height: height*0.02,),
                 Container(
                     padding: EdgeInsets.symmetric(horizontal: width*0.05,vertical: 5),
                     color: Colors.lightBlue,
                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [AutoSizeText("Qty/Items",style: TextStyle(color: Colors.white),presetFontSizes: [14],),AutoSizeText("Prices",style: TextStyle(color: Colors.white),presetFontSizes: [14],)],)),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: width*0.05,vertical: 5),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [AutoSizeText("1 Hour Standard Cleaning",presetFontSizes: [14],),AutoSizeText("\$60.00/Fixed",presetFontSizes: [14],)],)),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: width*0.05,vertical: 5),
                      color: Colors.black26,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [AutoSizeText("Service Add-Ons",presetFontSizes: [14],),AutoSizeText("None",presetFontSizes: [14],)],)),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: width*0.05,vertical: 5),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [AutoSizeText("Booking Fee",presetFontSizes: [14],),AutoSizeText("\$2.10",presetFontSizes: [14],)],)),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: width*0.05,vertical: 5),
                      color: Colors.black26,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [AutoSizeText("Discount",presetFontSizes: [14],),AutoSizeText("\$0.00",presetFontSizes: [14],)],)),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: width*0.05,vertical: 5),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [AutoSizeText("Tax",presetFontSizes: [14],),AutoSizeText("\$2.10",presetFontSizes: [14],)],)),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: width*0.05,vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:  Radius.circular(10))
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [AutoSizeText("TOTAL",style: TextStyle(color: Colors.white),presetFontSizes: [18],),AutoSizeText("\$62.10",style: TextStyle(color: Colors.white),presetFontSizes: [18],)],)),
                ],),),
              SizedBox(height: height*0.03,),
              Row(children: [
                Icon(Icons.add_circle),
                SizedBox(width: 5,),
                AutoSizeText("Add Payment"),
                Spacer(),
                TextButton(onPressed: (){}, child: AutoSizeText("Promo Code"),style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.black38)),primary: Colors.black38),)
              ],),
              SizedBox(height: height*0.03,),
              GestureDetector(
                onTap: ()=>Get.find<HomeController>().setIndex(Get.find<HomeController>().homeStackIndex+1),
                child: Container(
                  width: width,
                  height: height*0.07,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: theme.primaryColor),
                  child: Center(child: AutoSizeText("Confirm & Pay",style: TextStyle(color: Colors.white),presetFontSizes: [18,16],),),
                ),
              ),
            ],),
          ),
        ))
      ],),
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/home/home_controller.dart';
import 'package:green_and_clean/views/widgets/appbar.dart';

class AddPaymentMethod extends StatelessWidget {
  const AddPaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: height,
          color: theme.primaryColor,
          child: Column(
            children: [
              AppBarView(
                title: "Add payment method",
                enableBackButton: true,
                onPressed: () => Get.back(),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topRight: const Radius.circular(25),
                        topLeft: const Radius.circular(25))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Image.asset("assets/images/cards.png"),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    const Center(
                        child: AutoSizeText(
                      "Please add credit card or debit card detail",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Card(
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintText: "Card Number",
                                  hintStyle: TextStyle(color: Colors.white)),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          fillColor: Colors.black,
                                          filled: true,
                                          contentPadding:
                                              EdgeInsets.symmetric(),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          hintText: "MM",
                                          hintStyle:
                                              TextStyle(color: Colors.white)),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    flex: 1,
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          fillColor: Colors.black,
                                          filled: true,
                                          contentPadding:
                                              EdgeInsets.symmetric(),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          hintText: "YY",
                                          hintStyle:
                                              TextStyle(color: Colors.white)),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    flex: 2,
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          fillColor: Colors.black,
                                          filled: true,
                                          contentPadding:
                                              EdgeInsets.symmetric(),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          hintText: "CVC",
                                          hintStyle:
                                              TextStyle(color: Colors.white)),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: height * 0.05,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        width: width,
                        height: height * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: theme.primaryColor),
                        child: Center(
                          child: AutoSizeText(
                            "Add",
                            style: TextStyle(color: Colors.white),
                            presetFontSizes: [18, 16],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';

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
                backButtonOnPressed: () => Get.back(),
                enableTrailingButton: false,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
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
                        child: Text(
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
                              keyboardType: TextInputType.number,
                              maxLength: 20,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  filled: true,
                                  counterText: "",
                                  contentPadding: const EdgeInsets.symmetric(),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 1.5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintText: "Card Number",
                                  hintStyle:
                                      const TextStyle(color: Colors.white)),
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
                                      keyboardType: TextInputType.number,
                                      maxLength: 2,
                                      style:
                                          const TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          fillColor: Colors.black,
                                          counterText: "",
                                          filled: true,
                                          focusedBorder:
                                              const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 1.5),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                          contentPadding:
                                              const EdgeInsets.symmetric(),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          hintText: "MM",
                                          hintStyle: const TextStyle(
                                              color: Colors.white)),
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    flex: 1,
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      maxLength: 2,
                                      style:
                                          const TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          fillColor: Colors.black,
                                          counterText: "",
                                          filled: true,
                                          focusedBorder:
                                              const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 1.5),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                          contentPadding:
                                              const EdgeInsets.symmetric(),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          hintText: "YY",
                                          hintStyle: const TextStyle(
                                              color: Colors.white)),
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    flex: 2,
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      maxLength: 3,
                                      style:
                                          const TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          counterText: "",
                                          fillColor: Colors.black,
                                          focusedBorder:
                                              const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 1.5),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                          filled: true,
                                          contentPadding:
                                              const EdgeInsets.symmetric(),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          hintText: "CVC",
                                          hintStyle: const TextStyle(
                                              color: Colors.white)),
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
                        child: const Center(
                          child: Text(
                            "Add",
                            style: TextStyle(fontSize: 18, color: Colors.white),
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

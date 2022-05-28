import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';

class AddPaymentMethod extends StatelessWidget {
  const AddPaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Image.asset("assets/images/cards.png"),
                    const SizedBox(
                      height: 40,
                    ),
                    const Center(
                        child: Text(
                      "Please add credit card or debit card detail",
                      style: TextStyle(color: Color(0xff707070), fontSize: 16),
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color(0xff707070), width: 0.5),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
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
                                          Radius.circular(12))),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  hintText: "Card Number",
                                  hintStyle:
                                      const TextStyle(color: Colors.white)),
                            ),
                            const SizedBox(
                              height: 30,
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
                                                          Radius.circular(12))),
                                          contentPadding:
                                              const EdgeInsets.symmetric(),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
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
                                                          Radius.circular(12))),
                                          contentPadding:
                                              const EdgeInsets.symmetric(),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
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
                                                          Radius.circular(12))),
                                          filled: true,
                                          contentPadding:
                                              const EdgeInsets.symmetric(),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          hintText: "CVC",
                                          hintStyle: const TextStyle(
                                              color: Colors.white)),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        width: width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
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
              ),
            ))
          ],
        ),
      ),
    );
  }
}

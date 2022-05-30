import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/Constants/size.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'add_payment_page.dart';
import 'order_success_page.dart';

class CleaningOrderSummary extends StatelessWidget {
  const CleaningOrderSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: theme.primaryColor,
        child: Column(
          children: [
            AppBarView(
              title: "Summary",
              enableBackButton: true,
              backButtonOnPressed: () {
                Navigator.pop(context);
              },
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
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
                                                "assets/images/person.png",
                                                width: width * 0.18,
                                              )),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text("4.0"),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: 14,
                                            ),
                                            Text("(125)",
                                                style: TextStyle(
                                                    color: Color(0xff707070)))
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
                                          children: const [
                                            Text(
                                              "Mayra Q.",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff707070)),
                                            ),
                                            Text("Miami, Florida",
                                                style: TextStyle(
                                                    color: Color(0xff707070))),
                                          ],
                                        )),
                                        Icon(
                                          Icons.forum_sharp,
                                          color: theme.primaryColor,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    const Center(
                                      child: Text("House/Standard Cleaning",
                                          style: TextStyle(
                                              color: Color(0xff707070))),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.location_on_sharp,
                                          size: 14,
                                        ),
                                        Text("3.3 Mi Away",
                                            style: TextStyle(
                                                color: Color(0xff707070)))
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Center(
                                      child: Text("English/Spanish",
                                          style: TextStyle(
                                              color: Color(0xff707070))),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 6,
                          ),
                          const Center(
                            child: Text("Order Summary",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff707070))),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Center(
                            child: Text("House/Standard Cleaning",
                                style: TextStyle(color: Color(0xff707070))),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 5),
                              color: Colors.lightBlue,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Qty/Items",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Prices",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "1 Hour Standard Cleaning",
                                  ),
                                  Text(
                                    "\$60.00/Fixed",
                                  )
                                ],
                              )),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 5),
                              color: Colors.black26,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Service Add-Ons",
                                  ),
                                  Text(
                                    "None",
                                  )
                                ],
                              )),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Booking Fee",
                                  ),
                                  Text(
                                    "\$2.10",
                                  )
                                ],
                              )),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 5),
                              color: Colors.black26,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Discount",
                                  ),
                                  Text(
                                    "\$0.00",
                                  )
                                ],
                              )),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Tax",
                                  ),
                                  Text(
                                    "\$2.10",
                                  )
                                ],
                              )),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 8),
                              decoration: const BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "TOTAL",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "\$62.10",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            Get.to(() => const AddPaymentMethod());
                          },
                          icon: const Icon(Icons.add_circle),
                          label: const Text("Add Payment"),
                          style: TextButton.styleFrom(primary: Colors.black),
                        ),
                        // const Spacer(),
                        SizedBox(
                          width: AppConfig(context).width * 0.4,
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            maxLength: 2,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                counterText: "",
                                fillColor: Colors.white,
                                filled: true,
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff707070), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                contentPadding: const EdgeInsets.symmetric(),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff707070), width: 1),
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: "Promo code",
                                hintStyle:
                                    const TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => const OrderSuccessPage()),
                      child: Container(
                        width: width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: theme.primaryColor),
                        child: const Center(
                          child: Text(
                            "Confirm & Pay",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
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

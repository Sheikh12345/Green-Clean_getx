import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'ical_connection.dart';

class AddPropertyPage extends StatelessWidget {
  const AddPropertyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: theme.primaryColor,
        child: Column(
          children: [
            AppBarView(
              title: "Add Property",
              enableBackButton: true,
              backButtonOnPressed: () => Get.back(),
              enableTrailingButton: false,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Material(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/home.jpeg",
                                  width: width * 0.18,
                                  height: width * 0.18,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          TextButton.icon(
                              icon: const Icon(Icons.add_circle_outline),
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  primary: Colors.blue.shade800),
                              label: const AutoSizeText("Add Image"))
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Property Name",
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.shade800, width: 1.5),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Address",
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.shade800, width: 1.5),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: "Apt #",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue.shade800, width: 1.5),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Flexible(
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: "City",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue.shade800, width: 1.5),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: "State",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue.shade800, width: 1.5),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Flexible(
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: "Country",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue.shade800, width: 1.5),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      const AutoSizeText("Do you have a channel manager?"),
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: 0, groupValue: 0, onChanged: (val) {}),
                              const SizedBox(
                                width: 5,
                              ),
                              const AutoSizeText("Yes")
                            ],
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 1, groupValue: 0, onChanged: (val) {}),
                              const SizedBox(
                                width: 5,
                              ),
                              const AutoSizeText("No")
                            ],
                          ),
                          const Spacer(
                            flex: 3,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const AutoSizeText(
                          "Do you want to connect using your channel manager or iCal?"),
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: 0, groupValue: 0, onChanged: (val) {}),
                              const SizedBox(
                                width: 5,
                              ),
                              const AutoSizeText("Yes")
                            ],
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 1, groupValue: 0, onChanged: (val) {}),
                              const SizedBox(
                                width: 5,
                              ),
                              const AutoSizeText("No")
                            ],
                          ),
                          const Spacer(
                            flex: 3,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const AutoSizeText(
                          "Please select your channel manager or iCal to connect"),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/airbnb.png",
                              width: width * 0.3,
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_rounded)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/vrbo.png",
                              width: width * 0.3,
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_rounded)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/booking.png",
                                width: width * 0.3,
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_rounded)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/tripadvisor.png",
                                width: width * 0.3,
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_rounded)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/hostaway.png",
                              width: width * 0.3,
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_rounded)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/guest.png",
                              width: width * 0.3,
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_rounded)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/lodgify.png",
                                width: width * 0.3,
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_rounded)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const IcalConnectionPage());
                        },
                        child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: theme.primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: AutoSizeText(
                                "Next",
                                presetFontSizes: [18],
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                    ],
                  )),
            ))
          ],
        ),
      ),
    );
  }
}

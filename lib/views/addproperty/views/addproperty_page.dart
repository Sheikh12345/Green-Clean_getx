import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/addproperty/views/ical_connection.dart';

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
            const SizedBox(
              height: kToolbarHeight / 2,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                    )),
                const Expanded(
                  child: SizedBox(),
                  flex: 2,
                ),
                const AutoSizeText(
                  "Add Property",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const Expanded(
                  child: SizedBox(),
                  flex: 3,
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  decoration: BoxDecoration(
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
                                  "assets/home.jpeg",
                                  width: width * 0.18,
                                  height: width * 0.18,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          TextButton.icon(
                              icon: Icon(Icons.add_circle_outline),
                              onPressed: () {},
                              label: AutoSizeText("Add Image"))
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(hintText: "Property Name"),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(hintText: "Address"),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: "Apt #"),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Flexible(
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: "City"),
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
                              decoration: InputDecoration(hintText: "State"),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Flexible(
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(hintText: "Country"),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      AutoSizeText("Do you have a channel manager?"),
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: 0, groupValue: 0, onChanged: (val) {}),
                              SizedBox(
                                width: 5,
                              ),
                              AutoSizeText("Yes")
                            ],
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 1, groupValue: 0, onChanged: (val) {}),
                              SizedBox(
                                width: 5,
                              ),
                              AutoSizeText("No")
                            ],
                          ),
                          Spacer(
                            flex: 3,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AutoSizeText(
                          "Do you want to connect using your channel manager or iCal?"),
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: 0, groupValue: 0, onChanged: (val) {}),
                              SizedBox(
                                width: 5,
                              ),
                              AutoSizeText("Yes")
                            ],
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 1, groupValue: 0, onChanged: (val) {}),
                              SizedBox(
                                width: 5,
                              ),
                              AutoSizeText("No")
                            ],
                          ),
                          Spacer(
                            flex: 3,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AutoSizeText(
                          "Please select your channel manager or iCal to connect"),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/airbnb.png",
                              width: width * 0.3,
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_rounded)
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
                              "assets/vrbo.png",
                              width: width * 0.3,
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_rounded)
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
                                "assets/booking.png",
                                width: width * 0.3,
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_rounded)
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
                                "assets/tripadvisor.png",
                                width: width * 0.3,
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_rounded)
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
                              "assets/hostaway.png",
                              width: width * 0.3,
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_rounded)
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
                              "assets/guest.png",
                              width: width * 0.3,
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_rounded)
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
                                "assets/lodgify.png",
                                width: width * 0.3,
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_rounded)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => IcalConnectionPage());
                        },
                        child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: theme.primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
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

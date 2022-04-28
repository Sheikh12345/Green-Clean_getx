import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/addproperty/views/amenities.dart';

class IcalConnectionPage extends StatelessWidget {
  const IcalConnectionPage({Key? key}) : super(key: key);

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
                  "Vacation Rental Connection",
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
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Image.asset(
                          "assets/airbnb.png",
                          width: width * 0.6,
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.connecting_airports_outlined),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    AutoSizeText(
                                        "Please select a connection option")
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Checkbox(value: true, onChanged: (val) {}),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    AutoSizeText("iCal")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: [
                            Icon(Icons.file_present),
                            SizedBox(
                              width: 5,
                            ),
                            AutoSizeText("iCal Connection")
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Center(
                          child: AutoSizeText(
                            "Export an iCal link from AirBnb to automatically\nGet guest reservations from AirBnb",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Enter iCal link",
                              prefixIcon: Icon(Icons.file_present)),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Enter Address",
                              prefixIcon: Icon(Icons.location_pin)),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Get.to(() => AmenitiesPage());
                            },
                            child: AutoSizeText("Connect"))
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}

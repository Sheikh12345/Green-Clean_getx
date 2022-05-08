import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/addproperty/views/amenities.dart';
import 'package:green_and_clean/views/widgets/appbar.dart';

class IcalConnectionPage extends StatelessWidget {
  const IcalConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: theme.primaryColor,
          height: height - MediaQuery.of(context).padding.top,
          child: Column(
            children: [
              AppBarView(
                title: "Vacation Rental Connection",
                enableBackButton: true,
                onPressed: () => Get.back(),
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
                            "assets/images/airbnb.png",
                            height: height * 0.07,
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
                                      Checkbox(
                                          value: true, onChanged: (val) {}),
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
                              maxLines: 2,
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
                              child: AutoSizeText("Connect")),
                        ],
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

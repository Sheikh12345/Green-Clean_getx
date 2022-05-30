import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'amenities.dart';

class IcalConnectionPage extends StatelessWidget {
  IcalConnectionPage({Key? key}) : super(key: key);
  final List<String> dropdownValues = ["Lorem ispsum", "Lorem ispsum"];
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: theme.primaryColor,
        height: height - MediaQuery.of(context).padding.top,
        child: Column(
          children: [
            AppBarView(
              title: "Vacation Rental Connection",
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Image.asset(
                            "assets/images/airbnb.png",
                            height: 60,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        FontAwesomeIcons.link,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Please select a connection option")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                          side: const BorderSide(
                                              color: Colors.black, width: 1.5),
                                          value: false,
                                          onChanged: (val) {}),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text("iCal")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: const [
                              Image(
                                  height: 30,
                                  image:
                                      AssetImage("assets/icons/ical_icon.png")),
                              SizedBox(
                                width: 5,
                              ),
                              Text("iCal Connection")
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Center(
                            child: Text(
                              "Export an iCal link from AirBnb to automatically\nGet guest reservations from AirBnb",
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                          ),
                          const SizedBox(height: 25),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Enter iCal link",
                              prefixIcon: const Image(
                                  height: 30,
                                  image:
                                      AssetImage("assets/icons/ical_icon.png")),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue.shade800, width: 1.5)),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          DropdownButtonFormField<String>(
                            isExpanded: true,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.location_pin),
                            ),
                            hint: Text(
                              'Select Address',
                              style: TextStyle(
                                  color:
                                      const Color(0xff707070).withOpacity(0.5)),
                            ),
                            items: <String>['A', 'B', 'C', 'D']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                ),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => AmenitiesPage());
                            },
                            child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: theme.primaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                    child: Text(
                                  "Connect",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ))),
                          ),
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}

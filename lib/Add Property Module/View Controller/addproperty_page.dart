import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'ical_connection.dart';

class AddPropertyPage extends StatelessWidget {
  AddPropertyPage({Key? key}) : super(key: key);
  final List<String> dropdownValues = ["Lorem ispsum", "Lorem ispsum"];
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
              title: "Add Property",
              enableBackButton: true,
              backButtonOnPressed: () => Get.back(),
              enableTrailingButton: false,
            ),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25))),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
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
                                      width: 65,
                                      height: 65,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              TextButton.icon(
                                  icon: const Icon(
                                    Icons.add_circle_outline,
                                    size: 20,
                                  ),
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      primary: Colors.black),
                                  label: const Text(
                                    "Add Image",
                                    style: TextStyle(color: Color(0xff707070)),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 15,
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
                          const SizedBox(
                            height: 15,
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
                          const SizedBox(
                            height: 15,
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
                                          color: Colors.blue.shade800,
                                          width: 1.5),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Flexible(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: "City",
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue.shade800,
                                          width: 1.5),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: DropdownButton(
                                    isExpanded: true,
                                    underline: Container(
                                      height: 1,
                                      color: const Color(0xff707070)
                                          .withOpacity(0.6),
                                    ),
                                    hint: Center(
                                      child: Text("State",
                                          style: TextStyle(
                                              color: const Color(0xff707070)
                                                  .withOpacity(0.5))),
                                    ),
                                    items: dropdownValues
                                        .map((value) => DropdownMenuItem(
                                              child: Text(value),
                                              value: value,
                                            ))
                                        .toList(),
                                    onChanged: (String? value) {}),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Flexible(
                                child: DropdownButton(
                                    isExpanded: true,
                                    underline: Container(
                                      height: 1,
                                      color: const Color(0xff707070)
                                          .withOpacity(0.6),
                                    ),
                                    hint: Center(
                                      child: Text(
                                        "Country",
                                        style: TextStyle(
                                            color: const Color(0xff707070)
                                                .withOpacity(0.5)),
                                      ),
                                    ),
                                    items: dropdownValues
                                        .map((value) => DropdownMenuItem(
                                              child: Text(value),
                                              value: value,
                                            ))
                                        .toList(),
                                    onChanged: (String? value) {}),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text("Do you have a channel manager?",
                              style: TextStyle(color: Color(0xff707070))),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 2),
                                    ),
                                    width: 20,
                                    height: 20,
                                    child: Theme(
                                      data: ThemeData(
                                          unselectedWidgetColor: Colors.white),
                                      child: Checkbox(
                                        checkColor: Colors.black,
                                        activeColor: Colors.transparent,
                                        value: true,
                                        tristate: false,
                                        onChanged: (bool? isChecked) {},
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("Yes",
                                      style:
                                          TextStyle(color: Color(0xff707070)))
                                ],
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 2),
                                    ),
                                    width: 20,
                                    height: 20,
                                    child: Theme(
                                      data: ThemeData(
                                          unselectedWidgetColor: Colors.white),
                                      child: Checkbox(
                                        checkColor: Colors.black,
                                        activeColor: Colors.transparent,
                                        value: false,
                                        tristate: false,
                                        onChanged: (bool? isChecked) {},
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("No",
                                      style:
                                          TextStyle(color: Color(0xff707070)))
                                ],
                              ),
                              const Spacer(
                                flex: 3,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                              "Do you want to connect using your channel manager or iCal?",
                              style: TextStyle(color: Color(0xff707070))),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 2),
                                    ),
                                    width: 20,
                                    height: 20,
                                    child: Theme(
                                      data: ThemeData(
                                          unselectedWidgetColor: Colors.white),
                                      child: Checkbox(
                                        checkColor: Colors.black,
                                        activeColor: Colors.transparent,
                                        value: true,
                                        tristate: false,
                                        onChanged: (bool? isChecked) {},
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("Yes",
                                      style:
                                          TextStyle(color: Color(0xff707070)))
                                ],
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 2),
                                    ),
                                    width: 20,
                                    height: 20,
                                    child: Theme(
                                      data: ThemeData(
                                          unselectedWidgetColor: Colors.white),
                                      child: Checkbox(
                                        checkColor: Colors.black,
                                        activeColor: Colors.transparent,
                                        value: false,
                                        tristate: false,
                                        onChanged: (bool? isChecked) {},
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("No",
                                      style:
                                          TextStyle(color: Color(0xff707070)))
                                ],
                              ),
                              const Spacer(
                                flex: 3,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                              "Please select your channel manager or iCal to connect",
                              style: TextStyle(color: Color(0xff707070))),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            height: 56,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/airbnb.png",
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      FontAwesomeIcons.rightLong,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 56,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/vrbo.png",
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      FontAwesomeIcons.rightLong,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 56,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/booking.png",
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      FontAwesomeIcons.rightLong,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 56,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/tripadvisor.png",
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      FontAwesomeIcons.rightLong,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 56,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/hostaway.png",
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      FontAwesomeIcons.rightLong,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 56,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/guest.png",
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      FontAwesomeIcons.rightLong,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 56,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/lodgify.png",
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      FontAwesomeIcons.rightLong,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => IcalConnectionPage());
                            },
                            child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: theme.primaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 10,
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

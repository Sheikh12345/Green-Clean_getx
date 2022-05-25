import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'ical_connection.dart';

class AddPropertyPage extends StatelessWidget {
  const AddPropertyPage({Key? key}) : super(key: key);

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
                                  icon: const Icon(Icons.add_circle_outline),
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      primary: Colors.blue.shade800),
                                  label: const Text("Add Image"))
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
                                width: 15,
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
                            height: 15,
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
                                          color: Colors.blue.shade800,
                                          width: 1.5),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: "Country",
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
                          const Text("Do you have a channel manager?"),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: 0,
                                      groupValue: 0,
                                      onChanged: (val) {}),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("Yes")
                                ],
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: 1,
                                      groupValue: 0,
                                      onChanged: (val) {}),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("No")
                                ],
                              ),
                              const Spacer(
                                flex: 3,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                              "Do you want to connect using your channel manager or iCal?"),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: 0,
                                      groupValue: 0,
                                      onChanged: (val) {}),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("Yes")
                                ],
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: 1,
                                      groupValue: 0,
                                      onChanged: (val) {}),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("No")
                                ],
                              ),
                              const Spacer(
                                flex: 3,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                              "Please select your channel manager or iCal to connect"),
                          const SizedBox(
                            height: 15,
                          ),
                          Card(
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/airbnb.png",
                                  width: 110,
                                ),
                                const Spacer(),
                                const Icon(Icons.arrow_forward_rounded)
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Card(
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/vrbo.png",
                                  width: 110,
                                ),
                                const Spacer(),
                                const Icon(Icons.arrow_forward_rounded)
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/booking.png",
                                    width: 110,
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_rounded)
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/tripadvisor.png",
                                    width: 110,
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_rounded)
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Card(
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/hostaway.png",
                                  width: 110,
                                ),
                                const Spacer(),
                                const Icon(Icons.arrow_forward_rounded)
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Card(
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/guest.png",
                                  width: 110,
                                ),
                                const Spacer(),
                                const Icon(Icons.arrow_forward_rounded)
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
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
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const IcalConnectionPage());
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

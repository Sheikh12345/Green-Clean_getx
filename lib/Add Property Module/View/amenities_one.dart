import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'addpropertysuccess.dart';

class AmenitiesOnePage extends StatelessWidget {
  AmenitiesOnePage({Key? key}) : super(key: key);
  final List<String> _dropdownValues = ["House Keeper", "Owner"];
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        height: height - MediaQuery.of(context).padding.top,
        color: theme.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarView(
              title: "Amenities",
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Image.asset("assets/images/home.png"),
                                flex: 2,
                              ),
                              Expanded(
                                  flex: 6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Glamourn 6BR@Midtown",
                                        maxLines: 1,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "327 Northwest 39th Street",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "Miami, Florida 33127",
                                        style: TextStyle(fontSize: 12),
                                        maxLines: 1,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  )),
                              const Expanded(flex: 2, child: SizedBox())
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          const Text("Who provide the cleaning products?"),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    border: Border.all(
                                        color: Colors.grey,
                                        style: BorderStyle.solid,
                                        width: 0.80),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      items: _dropdownValues
                                          .map((value) => DropdownMenuItem(
                                                child: Text(value),
                                                value: value,
                                              ))
                                          .toList(),
                                      onChanged: (String? value) {},
                                      isExpanded: false,
                                      value: _dropdownValues.first,
                                    ),
                                  ),
                                ),
                                flex: 3,
                              ),
                              const Expanded(
                                child: SizedBox(),
                                flex: 2,
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          const Text(
                              "Do you want the booking to be automatic?"),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: 0,
                                      groupValue: 0,
                                      activeColor: Colors.blue.shade800,
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
                                      activeColor: Colors.blue.shade800,
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
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const AddPropertySuccessPage());
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
                          SizedBox(
                            height: height * 0.04,
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

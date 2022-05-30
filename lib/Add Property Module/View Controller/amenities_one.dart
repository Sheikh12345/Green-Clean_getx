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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Glamourn 6BR@Midtown",
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff0C93D0)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "327 Northwest 39th Street",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff707070)),
                                    ),
                                    Text(
                                      "Miami, Florida 33127",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff707070)),
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
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Who provide the cleaning products?",
                          style: TextStyle(color: Color(0xff707070)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                      color: Colors.grey,
                                      style: BorderStyle.solid,
                                      width: 0.80),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    items: _dropdownValues
                                        .map((value) => DropdownMenuItem(
                                              child: Center(child: Text(value)),
                                              value: value,
                                            ))
                                        .toList(),
                                    onChanged: (String? value) {},
                                    style: const TextStyle(
                                        color: Color(0xff707070)),
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
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Do you want the booking to be automatic?",
                              style: TextStyle(color: Color(0xff707070)),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Image(
                                image: AssetImage("assets/icons/help_icon.png"))
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
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
                                      value: true,
                                      tristate: false,
                                      onChanged: (bool? isChecked) {},
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Yes",
                                  style: TextStyle(color: Color(0xff707070)),
                                )
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
                                  width: 10,
                                ),
                                const Text(
                                  "No",
                                  style: TextStyle(color: Color(0xff707070)),
                                )
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
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}

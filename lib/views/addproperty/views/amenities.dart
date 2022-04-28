import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/addproperty/views/addproperty_page.dart';
import 'package:green_and_clean/views/addproperty/views/addpropertysuccess.dart';
import 'package:green_and_clean/views/home/home_stack/order_success_page.dart';

class AmenitiesPage extends StatelessWidget {
  const AmenitiesPage({Key? key}) : super(key: key);

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
                  "Amenities",
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
                        Row(
                          children: [
                            Expanded(
                              child: Icon(Icons.home_filled),
                              flex: 2,
                            ),
                            Expanded(
                                flex: 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      "Glamourn 6BR@Midtown",
                                      presetFontSizes: [16],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      "327 Northwest 39th Street",
                                    ),
                                    AutoSizeText(
                                      "Miami, Florida 33127",
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                  ],
                                )),
                            Expanded(flex: 2, child: SizedBox())
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.bed_rounded,
                                            size: 30,
                                          )
                                        ],
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: AutoSizeText('Bedrooms'),
                                      )),
                                  Flexible(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.remove_circle)),
                                          AutoSizeText("6"),
                                          IconButton(
                                              onPressed: () {},
                                              icon:
                                                  const Icon(Icons.add_circle)),
                                        ],
                                      ))
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Flexible(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.bathtub,
                                            size: 30,
                                          )
                                        ],
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: AutoSizeText('Bathrooms'),
                                      )),
                                  Flexible(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.remove_circle)),
                                          AutoSizeText("6"),
                                          IconButton(
                                              onPressed: () {},
                                              icon:
                                                  const Icon(Icons.add_circle)),
                                        ],
                                      ))
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Flexible(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.living,
                                            size: 30,
                                          )
                                        ],
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: AutoSizeText('Living Rooms'),
                                      )),
                                  Flexible(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.remove_circle)),
                                          AutoSizeText("6"),
                                          IconButton(
                                              onPressed: () {},
                                              icon:
                                                  const Icon(Icons.add_circle)),
                                        ],
                                      ))
                                ],
                              ),
                              Divider(),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => AddPropertySuccessPage());
                                },
                                child: Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: theme.primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                          ),
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}

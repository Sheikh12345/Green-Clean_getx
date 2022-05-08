import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/addproperty/views/addproperty_page.dart';
import 'package:green_and_clean/views/addproperty/views/addpropertysuccess.dart';
import 'package:green_and_clean/views/addproperty/views/amenities_one.dart';
import 'package:green_and_clean/views/home/home_stack/order_success_page.dart';
import 'package:green_and_clean/views/widgets/appbar.dart';

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
            AppBarView(
              title: "Amenities",
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
                                  children: [
                                    AutoSizeText(
                                      "Glamourn 6BR@Midtown",
                                      presetFontSizes: [16, 14, 12, 10],
                                      maxLines: 1,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      "327 Northwest 39th Street",
                                      presetFontSizes: [12, 10, 8],
                                      maxLines: 1,
                                    ),
                                    AutoSizeText(
                                      "Miami, Florida 33127",
                                      presetFontSizes: [12, 10, 8],
                                      maxLines: 1,
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
                          height: height * 0.02,
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
                                  Get.to(() => AmenitiesOnePage());
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

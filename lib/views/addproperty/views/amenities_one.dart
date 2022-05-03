import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/addproperty/views/addproperty_page.dart';
import 'package:green_and_clean/views/addproperty/views/addpropertysuccess.dart';
import 'package:green_and_clean/views/home/home_stack/order_success_page.dart';
import 'package:green_and_clean/views/widgets/appbar.dart';

class AmenitiesOnePage extends StatelessWidget {
  const AmenitiesOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: height - MediaQuery.of(context).padding.top,
            color: theme.primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Image.asset("assets/home.png"),
                                  flex: 2,
                                ),
                                Expanded(
                                    flex: 6,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          "Glamourn 6BR@Midtown",
                                          presetFontSizes: [16, 14, 12, 10, 8],
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
                            Divider(
                              thickness: 2,
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            AutoSizeText("Who provide the cleaning products?"),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    initialValue: "House Keeper",
                                  ),
                                  flex: 3,
                                ),
                                Expanded(
                                  child: SizedBox(),
                                  flex: 2,
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * 0.04,
                            ),
                            AutoSizeText(
                                "Do you want the booking to be automatic?"),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value: 0,
                                        groupValue: 0,
                                        onChanged: (val) {}),
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
                                        value: 1,
                                        groupValue: 0,
                                        onChanged: (val) {}),
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
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => AddPropertySuccessPage());
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
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

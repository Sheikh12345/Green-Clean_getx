import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'addpropertysuccess.dart';

class AmenitiesOnePage extends StatelessWidget {
  const AmenitiesOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
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
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              topLeft: Radius.circular(25))),
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
                          const AutoSizeText(
                              "Who provide the cleaning products?"),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  initialValue: "House Keeper",
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue.shade800,
                                          width: 1.5),
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
                          const AutoSizeText(
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
                                  const AutoSizeText("Yes")
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
                                  const AutoSizeText("No")
                                ],
                              ),
                              const Spacer(
                                flex: 3,
                              )
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const AddPropertySuccessPage());
                            },
                            child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: theme.primaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
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
    );
  }
}

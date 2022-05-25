import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import '../../../Home Module/View Model/home_controller.dart';

class CleanersList extends StatelessWidget {
  const CleanersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.primaryColor,
      child: Column(
        children: [
          AppBarView(
            title: "Available Cleaners",
            enableBackButton: true,
            backButtonOnPressed: () {
              Get.find<HomeController>()
                  .setIndex(Get.find<HomeController>().homeStackIndex - 1);
            },
            enableTrailingButton: true,
            trailingButtonOnPressed: () {},
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                itemBuilder: (_, index) => const CleanerDetailThumbnail(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CleanerDetailThumbnail extends StatelessWidget {
  const CleanerDetailThumbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return GestureDetector(
      onTap: () {
        Get.find<HomeController>()
            .setIndex(Get.find<HomeController>().homeStackIndex + 1);
      },
      child: SizedBox(
        width: width,
        child: Card(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.grey[300]!))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Material(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "assets/images/person.png",
                                width: width * 0.18,
                              )),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("4.0"),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 14,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.location_on_sharp,
                              size: 14,
                            ),
                            Text(
                              "3.3 Mi",
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Center(
                          child: Text(
                            "English/Spanish",
                            style: TextStyle(fontSize: 12),
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 7,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 6,
                      ),
                      const Center(
                        child: Text(
                          "Mayra Q.",
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Center(
                        child: Text(
                          "House/Standard Cleaning",
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          const Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text: "\$60.00",
                                  style: TextStyle(fontSize: 16)),
                              TextSpan(
                                  text: "\nFixed Price",
                                  style: TextStyle(fontSize: 11))
                            ]),
                            textAlign: TextAlign.center,
                          ),
                          const Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text: "\$20.00",
                                  style: TextStyle(fontSize: 16)),
                              TextSpan(
                                  text: "\nHourly Price",
                                  style: TextStyle(fontSize: 11))
                            ]),
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                              onPressed: () {},
                              iconSize: width * 0.06,
                              icon: const Icon(Icons.arrow_forward_ios_sharp))
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                  Icons.chat_bubble_outline_outlined),
                              label: const Text(
                                "Chat",
                                maxLines: 1,
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  fixedSize: const Size(40, 40),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero)),
                            )),
                            Expanded(
                                child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const FaIcon(FontAwesomeIcons.eye),
                              label: const Text(
                                "Profile",
                                maxLines: 1,
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  fixedSize: const Size(40, 40),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10))),
                                  primary: Colors.lightBlue),
                            ))
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

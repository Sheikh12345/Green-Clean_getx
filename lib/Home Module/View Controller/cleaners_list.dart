import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Home%20Module/View%20Controller/clearner_detail_page.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CleanersList extends StatelessWidget {
  const CleanersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: theme.primaryColor,
        child: Column(
          children: [
            AppBarView(
              title: "Available Cleaners",
              enableBackButton: true,
              backButtonOnPressed: () {
                Navigator.pop(context);
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
        pushNewScreen(
          context,
          screen: const CleanerDetailPage(),
          withNavBar: true, // OPTIONAL VALUE. True by default.
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
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
                    crossAxisAlignment: CrossAxisAlignment.end,
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
                              icon: const Image(
                                height: 16,
                                image:
                                    AssetImage("assets/images/right-arrow.png"),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 42,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.chat_bubble_outline_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Chat",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 42,
                                decoration: const BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      FontAwesomeIcons.eye,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Profile",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
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

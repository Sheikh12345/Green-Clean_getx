import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'amenities_one.dart';

class AmenitiesPage extends StatelessWidget {
  const AmenitiesPage({Key? key}) : super(key: key);

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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Glamourn 6BR@Midtown",
                                  style: TextStyle(fontSize: 14),
                                  maxLines: 1,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "327 Northwest 39th Street",
                                  style: TextStyle(fontSize: 12),
                                  maxLines: 1,
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
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.all(0),
                        children: [
                          Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.bed_outlined,
                                        size: 30,
                                      )
                                    ],
                                  )),
                              const Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text('Bedrooms'),
                                  )),
                              Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      const Text("6"),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ))
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.bathtub_outlined,
                                        size: 30,
                                      )
                                    ],
                                  )),
                              const Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text('Bathrooms'),
                                  )),
                              Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      const Text("6"),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ))
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.living_outlined,
                                        size: 30,
                                      )
                                    ],
                                  )),
                              const Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text('Living Rooms'),
                                  )),
                              Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      const Text("6"),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ))
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.dining_outlined,
                                        size: 30,
                                      )
                                    ],
                                  )),
                              const Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text('Dining Room'),
                                  )),
                              Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      const Text("6"),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ))
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.countertops_outlined,
                                        size: 30,
                                      )
                                    ],
                                  )),
                              const Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text('Kitchen'),
                                  )),
                              Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      const Text("6"),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ))
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.outdoor_grill_outlined,
                                        size: 30,
                                      )
                                    ],
                                  )),
                              const Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text('Patio'),
                                  )),
                              Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      const Text("6"),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ))
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.kitchen_outlined,
                                        size: 30,
                                      )
                                    ],
                                  )),
                              const Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text('Fridge'),
                                  )),
                              Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      const Text("6"),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ))
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.tv_outlined,
                                        size: 30,
                                      )
                                    ],
                                  )),
                              const Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text("TV's"),
                                  )),
                              Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      const Text("6"),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => AmenitiesOnePage());
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
                            height: 5,
                          )
                          //
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

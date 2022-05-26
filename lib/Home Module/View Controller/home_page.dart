import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Add%20Property%20Module/View%20Controller/vacationrental_page.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'package:green_and_clean/Utils/widgets/category_thumbnail.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'cleaning_type_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final theme = Theme.of(context);
    return Container(
      width: width,
      color: theme.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const AppBarView(
            title: "Green & Clean",
            enableBackButton: false,
            enableTrailingButton: false,
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 36,
                  ),
                  const Text(
                    "Please select a cleaning category",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  CategoryThumbnail(
                    image: "assets/images/vacation.png",
                    title: "Vacation Rental",
                    onPressed: () => pushNewScreen(
                      context,
                      screen: VacationRentalPage(),
                      withNavBar: true, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CategoryThumbnail(
                    image: "assets/images/hotel.png",
                    title: "Hotel",
                    onPressed: () => pushNewScreen(
                      context,
                      screen: CleaningTypePage(
                        imageURL: "assets/images/house_bg.png",
                      ),
                      withNavBar: true, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CategoryThumbnail(
                        image: "assets/images/house.png",
                        halfWidth: true,
                        title: "House",
                        onPressed: () => pushNewScreen(
                          context,
                          screen: CleaningTypePage(
                            imageURL: "assets/images/house_bg.png",
                          ),
                          withNavBar: true, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        ),
                      )),
                      Expanded(
                          child: CategoryThumbnail(
                        image: "assets/images/apartment.png",
                        halfWidth: true,
                        title: "Apartment",
                        onPressed: () => pushNewScreen(
                          context,
                          screen: CleaningTypePage(
                            imageURL: "assets/images/house_bg.png",
                          ),
                          withNavBar: true, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

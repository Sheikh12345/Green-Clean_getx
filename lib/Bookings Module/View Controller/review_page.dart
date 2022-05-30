import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/Constants/size.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import '../View Model/bookings_controller.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: theme.primaryColor,
        child: Column(
          children: [
            AppBarView(
              title: "Review",
              enableBackButton: true,
              enableTrailingButton: false,
              backButtonOnPressed: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          height: AppConfig(context).height - 180,
                          margin: const EdgeInsets.only(top: 6.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30.0)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                  icon: const Image(
                                    color: Color(0xff707070),
                                    height: 25,
                                    image: AssetImage(
                                      "assets/icons/close_icon.png",
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              const Text("Review",
                                  style: TextStyle(
                                      fontSize: 25, color: Color(0xffFF981C))),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text("Please add a review to",
                                  style: TextStyle(fontSize: 16)),
                              const SizedBox(height: 20),
                              const Text("Mayra Q.",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              const SizedBox(height: 20),
                              Material(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                      "assets/images/person.png",
                                      height: 100,
                                    )),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "4.0",
                                    style: TextStyle(
                                        color: Color(0xff0707070),
                                        fontSize: 16),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 20,
                                  )
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 45,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 45,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 45,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 45,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 45,
                                  )
                                ],
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: AppConfig(context).width * 0.85,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      hintText: 'Write a review',
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 50, horizontal: 20),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                              color: Colors.grey))),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: AppConfig(context).width * 0.5,
                                  height: 54,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.lightBlue),
                                  child: const Center(
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )))),
          ],
        ),
      ),
    );
  }
}

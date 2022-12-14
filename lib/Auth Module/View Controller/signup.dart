import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Auth%20Module/View%20Model/auth_view_model.dart';

import '../../Navigation Module/navigation_page.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        FontAwesomeIcons.circleArrowLeft,
                        size: 22,
                      ))
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        "Add your details to sign up",
                        style: TextStyle(color: Color(0xffb6b7b7)),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Name",
                          prefixIcon: const Icon(
                            Icons.person,
                            size: 20,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.shade800, width: 1.5),
                          )),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: const Icon(Icons.email, size: 20),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.shade800, width: 1.5),
                          )),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Mobile No",
                          prefixIcon: const Icon(FontAwesomeIcons.mobileScreen,
                              size: 20),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.shade800, width: 1.5),
                          )),
                    ),
                    const SizedBox(height: 35),
                    Obx(
                      () => TextField(
                        obscureText: authController.isPasswordVisible.value,
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: const Icon(
                            FontAwesomeIcons.key,
                            size: 20,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              authController.isPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: const Color(0xffB6B7B7),
                              size: 22,
                            ),
                            onPressed: () {
                              // Update the state i.e. toogle the state of passwordVisible variable
                              authController.changePasswordVisibility();
                            },
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue.shade800, width: 1.5)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (val) {},
                          checkColor: Colors.white,
                          activeColor: Colors.black,
                        ),
                        const Flexible(
                            child: Text(
                          "I accept terms & conditions and privacy policy.",
                          style: TextStyle(color: Color(0xff707070)),
                        ))
                      ],
                    ),
                    const SizedBox(height: 35),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => NavigationPage());
                      },
                      child: Container(
                        height: 56,
                        decoration: BoxDecoration(
                            color: theme.primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text.rich(TextSpan(children: [
                        const TextSpan(
                            text: "Already have an Account? ",
                            style: TextStyle(color: Color(0xff707070))),
                        TextSpan(
                            text: "Login",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.back(),
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.w800))
                      ])),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

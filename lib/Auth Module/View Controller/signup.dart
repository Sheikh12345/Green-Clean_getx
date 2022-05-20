import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Auth%20Module/View%20Model/auth_view_model.dart';
import 'package:green_and_clean/Utils/navigation/navigation_page.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
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
                      icon: const Icon(FontAwesomeIcons.circleArrowLeft))
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Column(
                  children: [
                    const Center(
                      child: AutoSizeText(
                        "Sign Up",
                        presetFontSizes: [30, 28, 24, 22],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: AutoSizeText(
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
                              color: Colors.blue.shade800,
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
                        Checkbox(value: true, onChanged: (val) {}),
                        const Flexible(
                            child: AutoSizeText(
                                "I accept terms & conditions and privacy policy."))
                      ],
                    ),
                    const SizedBox(height: 35),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const NavigationPage());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: theme.primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(height * 0.015),
                        child: const Center(
                          child: AutoSizeText(
                            "Sign Up",
                            style: TextStyle(color: Colors.white),
                            presetFontSizes: [22, 20],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: AutoSizeText.rich(TextSpan(children: [
                        const TextSpan(text: "Already have an Account? "),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

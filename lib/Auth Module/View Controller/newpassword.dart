import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Auth%20Module/View%20Controller/sms_verification.dart';
import 'package:green_and_clean/Auth%20Module/View%20Model/auth_view_model.dart';

class NewPasswordPage extends StatelessWidget {
  NewPasswordPage({Key? key}) : super(key: key);
  final authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height - MediaQuery.of(context).padding.top,
          child: Padding(
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
                        icon: const Icon(
                          FontAwesomeIcons.circleArrowLeft,
                          size: 22,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                    child: Column(
                      children: [
                        const Center(
                            child: Text(
                          "New Password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        )),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Please enter your email to recieve a\nlink to create a new password via email",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Obx(
                          () => TextField(
                            obscureText: authController.isPasswordVisible.value,
                            decoration: InputDecoration(
                              hintText: "New Password",
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
                                  color: const Color(0xff707070),

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
                        const SizedBox(height: 30),
                        Obx(
                          () => TextField(
                            obscureText:
                                authController.isConfirmPasswordVisible.value,
                            decoration: InputDecoration(
                              hintText: "Confirm Password",
                              prefixIcon: const Icon(
                                FontAwesomeIcons.key,
                                size: 20,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  authController.isConfirmPasswordVisible.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: const Color(0xff707070),
                                  size: 22,
                                ),
                                onPressed: () {
                                  // Update the state i.e. toogle the state of passwordVisible variable
                                  authController
                                      .changeConfirmPasswordVisibility();
                                },
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue.shade800, width: 1.5)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const SmsVerificationPage());
                          },
                          child: Container(
                            height: 56,
                            decoration: BoxDecoration(
                                color: theme.primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

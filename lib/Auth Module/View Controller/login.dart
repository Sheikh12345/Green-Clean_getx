import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Auth%20Module/View%20Controller/reset_password.dart';
import 'package:green_and_clean/Auth%20Module/View%20Controller/signup.dart';
import 'package:green_and_clean/Auth%20Module/View%20Model/auth_view_model.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: height - MediaQuery.of(context).padding.top,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                          decoration: InputDecoration(
                        hintText: "Your Email / Mobile Number",
                        prefixIcon: const Icon(
                          Icons.email,
                          size: 22,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.shade800, width: 1.5)),
                      )),
                      const SizedBox(
                        height: 40,
                      ),
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
                      const SizedBox(
                        height: 45,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed("/");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: theme.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(15),
                          child: const Center(
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Forgot your password?",
                            recognizer: TapGestureRecognizer()
                              ..onTap =
                                  () => Get.to(() => const ResetPasswordPage()),
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.w500))
                      ])),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: Text.rich(TextSpan(children: [
                    const TextSpan(text: "Don't have an Account? "),
                    TextSpan(
                        text: "Sign Up",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(() => SignUpPage()),
                        style: TextStyle(
                            color: Colors.blue[800],
                            fontWeight: FontWeight.w800))
                  ])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

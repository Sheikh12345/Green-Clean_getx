import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/auth/views/newpassword.dart';
import 'package:green_and_clean/views/auth/views/reset_password.dart';
import 'package:green_and_clean/views/auth/views/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: kToolbarHeight / 2,
              ),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios))
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: AutoSizeText(
                  "Login",
                  presetFontSizes: [24, 22],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Your Email / Mobile Number",
                    prefixIcon: Icon(Icons.email)),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Password", prefixIcon: Icon(Icons.key_outlined)),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              GestureDetector(
                onTap: () {
                  Get.offAllNamed("/");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(15),
                  child: Center(
                    child: AutoSizeText(
                      "Login",
                      style: TextStyle(color: Colors.white),
                      presetFontSizes: [22, 20],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(() => ResetPasswordPage());
                  },
                  child: AutoSizeText("Forgot your password?")),
              Spacer(),
              Center(
                child: AutoSizeText.rich(TextSpan(children: [
                  TextSpan(text: "Don't have an Account? "),
                  TextSpan(
                      text: "Sign Up",
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () => Get.to(() => SignUpPage()),
                      style: TextStyle(
                          color: Colors.blue[800], fontWeight: FontWeight.w800))
                ])),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SmsVerificationPage extends StatelessWidget {
  const SmsVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        height: height - MediaQuery.of(context).padding.top,
        child: Padding(
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
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  "We have sent an SMS\nverification code to\nyour Mobile.",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Please check your mobile number 071*****12\n continue to reset your password",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  textStyle: const TextStyle(color: Colors.black),
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 40,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      selectedColor: Colors.blue.shade800,
                      borderWidth: 2,
                      inactiveColor: Colors.grey[300]),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Didn't Receive? ",
                      style: TextStyle(color: Colors.grey)),
                  TextSpan(text: "Send Again")
                ])),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

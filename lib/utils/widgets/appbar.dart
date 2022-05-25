import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AppBarView extends StatelessWidget {
  const AppBarView(
      {Key? key,
      required this.title,
      required this.enableBackButton,
      this.backButtonOnPressed,
      this.trailingButtonOnPressed,
      required this.enableTrailingButton})
      : super(key: key);
  final String title;
  final bool enableBackButton;
  final bool enableTrailingButton;
  final Function()? backButtonOnPressed;
  final Function()? trailingButtonOnPressed;
  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return Padding(
      padding: EdgeInsets.only(
          top: (20) + MediaQuery.of(context).padding.top, bottom: 20),
      child: Row(
        children: [
          enableBackButton
              ? GestureDetector(
                  onTap: backButtonOnPressed,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.05, right: 5),
                    child: const FaIcon(
                      FontAwesomeIcons.circleArrowLeft,
                      color: Colors.white,
                    ),
                  ),
                )
              : const SizedBox(),
          Expanded(
            child: const SizedBox(),
            flex: enableBackButton ? 2 : 3,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const Expanded(
            child: SizedBox(),
            flex: 3,
          ),
          enableTrailingButton
              ? GestureDetector(
                  onTap: trailingButtonOnPressed,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.05, right: 5),
                    child: const FaIcon(
                      FontAwesomeIcons.filter,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

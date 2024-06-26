
import 'package:flutter/material.dart';

import '../colors.dart';
import 'package:get/get.dart';


class LoginInstructions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Log In",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: MyColors.onbSubText,
            fontWeight: FontWeight.w900,
            fontSize: Get.width * 0.06, // Responsive font size
          ),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 10.0),
        Text(
          "Enter your Mobile Number to Login.",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: MyColors.onbSubText,
            fontWeight: FontWeight.w500,
            fontSize: Get.width * 0.04, // Responsive font size
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Wel Come to\nDigitalDose!",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: MyColors.primaryBase, fontSize: Get.width * 0.08), // Responsive font size
          textAlign: TextAlign.start,
          softWrap: true,
        ),
      ],
    );
  }
}

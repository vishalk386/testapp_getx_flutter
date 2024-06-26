import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp_getx/widgets/login_instructions.dart';
import 'package:testapp_getx/widgets/welcometext_widgets.dart';

import 'device_utility.dart';
import 'main.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1), // Responsive padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: ADeviceutils.getAppBarHeight()),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/logo.png',
                height: Get.height * 0.1, // Responsive height
              ),
            ),
            SizedBox(height: Get.height * 0.05), // Responsive spacing
            WelcomeText(),
            SizedBox(height: Get.height * 0.05), // Responsive spacing
            LoginInstructions(),
            SizedBox(height: Get.height * 0.05), // Responsive spacing
            MobileInputFields(controller: controller),
            ErrorText(),
            SizedBox(height: Get.height * 0.02), // Responsive spacing
            GetOtpButton(controller: controller),
          ],
        ),
      ),
    );
  }
}



class MobileInputFields extends StatelessWidget {
  final LoginController controller;

  MobileInputFields({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: TextFormField(
            controller: controller.countryCodeController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.keyboard_arrow_down_outlined),
              labelText: 'mobile',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 16.0),
            ),
            onChanged: (value) => controller.validateMobile(value),
          ),
        ),
        Expanded(
          flex: 7,
          child: TextFormField(
            controller: controller.mobileController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 14.0),
              suffix: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.error_outline, color: Colors.red),
              ),
            ),
            onChanged: (value) => controller.validateMobile(value),
          ),
        ),
      ],
    );
  }
}


class ErrorText extends StatelessWidget {
  final LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => controller.errorText.value == null
          ? SizedBox.shrink()
          : Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              controller.errorText.value!,
              style: TextStyle(color: Colors.red, fontSize: Get.width * 0.04), // Responsive font size
            ),
          ],
        ),
      ),
    );
  }
}


class LoginController extends GetxController {
  var mobileController = TextEditingController();
  var errorText = RxnString();
  var countryCodeController = TextEditingController(text: "+91");

  void validateMobile(String value) {
    if (value.length == 10) {
      errorText.value = null;
    } else {
      errorText.value = 'Invalid Mobile No.';
    }
  }

  void getOTP() {
    if (mobileController.text.length == 10) {
      // Proceed to send OTP
      Get.snackbar('Success', 'OTP sent to ${mobileController.text}');
      // Navigate to next page if needed
      Get.to(OtpScreen());
    } else {
      errorText.value = 'Invalid Mobile No.';
    }
  }
}


class GetOtpButton extends StatelessWidget {
  final LoginController controller;

  GetOtpButton({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red,
      ),
      child: InkWell(
        onTap: controller.getOTP,
        child: Center(
          child: Text(
            "Get OTP",
            style: TextStyle(color: Colors.white, fontSize: Get.width * 0.04), // Responsive font size
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPageController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  void onClose() {
    emailController.dispose();
    passController.dispose();
    // TODO: implement onClose
    super.onClose();
  }
}

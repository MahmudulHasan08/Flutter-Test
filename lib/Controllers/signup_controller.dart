import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController reEnterPassController = TextEditingController();

  @override
  void onClose() {
    // TODO: implement onClose
    emailController.dispose();
    passController.dispose();
    reEnterPassController.dispose();
    super.onClose();
  }
}
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserInteractionController extends GetxController {
 final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  @override
  void onClose() {
    // TODO: implement onClose
    nameController.dispose();
    super.onClose();
  }
}
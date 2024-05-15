import 'package:get/get.dart';

import '../Controllers/user_interaction_controller.dart';

class UserInteractionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => UserInteractionController());
  }
}
import 'package:get/get.dart';
import 'package:test/Controllers/onbording_second_controller.dart';

class OnbordingSecondBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => OnbordingSecondController());
  }

}
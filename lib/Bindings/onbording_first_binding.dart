import 'package:get/get.dart';
import 'package:test/Controllers/onbording_first_page_controller.dart';

class OnbordingFirstBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => OnbordingFirstController());
  }

}
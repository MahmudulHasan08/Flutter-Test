import 'package:get/get.dart';
import 'package:test/Controllers/product_api_controller.dart';

class ProductApiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductApiController());
  }
}
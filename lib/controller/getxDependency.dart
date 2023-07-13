import 'package:get/get.dart';
import 'package:chat_app_v1/controller/authController.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => AuthenticationController());
    // Get.lazyPut(() => DateController());
    // Get.lazyPut(() => DB());
    //Get.lazyPut<AuthenticationController>(() => AuthenticationController());
  }
}

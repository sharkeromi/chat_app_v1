

import 'package:chat_app_v1/view/welcomeScreen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {

  @override
  void onInit() async {
    await navigateToHome();
    super.onInit();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Get.offAll(() => WelcomeScreen());
  }
}
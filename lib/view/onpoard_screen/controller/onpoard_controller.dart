import 'package:get/get.dart';
import 'package:test1/view/login_screen/screen/login_screen.dart';
import 'package:test1/view/onpoard_screen/screen/onpoard_pages.dart';

class OnPoardController extends GetxController {
  var currentIndex = 0.obs;

  void nextPage() {
    if (currentIndex.value < 2) {
      currentIndex.value++;
      if (currentIndex.value == 1) {
        Get.to(OnboardingPage2());
      } else if (currentIndex.value == 2) {
        Get.to(OnboardingPage3());
      }
    }
  }

  void previousPage() {
    if (currentIndex.value > 0) {
      currentIndex.value--;
      if (currentIndex.value == 1) {
        Get.to(OnboardingPage2());
      } else if (currentIndex.value == 0) {
        Get.to(OnboardingPage1());
      }
    }
  }

  void goToLogin() {
    Get.to(LoginScreen());
  }
}

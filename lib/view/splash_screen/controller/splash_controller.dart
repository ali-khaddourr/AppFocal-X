import 'package:get/get.dart';

import '../../../core/service/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 5), () {
      Get.toNamed(Routes.onPoardScreen);
    });
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/view/onpoard_screen/controller/onpoard_controller.dart';
import 'package:test1/view/onpoard_screen/screen/onpoard_pages.dart';

class OnPoardScreen extends StatelessWidget {
  const OnPoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnPoardController controller = Get.put(OnPoardController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: PageController(viewportFraction: 1),
            onPageChanged: (index) {
              controller.currentIndex.value = index;
            },
            children: [
              OnboardingPage1(),
              OnboardingPage2(),
              OnboardingPage3(),
            ],
          ),
          // وضع `ProgressIndicatorWidget` في أسفل الشاشة باستخدام `Positioned`

        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test1/core/const_data/app_colors.dart';
import 'package:test1/core/const_data/my_size.dart';
import 'package:test1/view/onpoard_screen/controller/onpoard_controller.dart';
import 'package:test1/view/onpoard_screen/widget/progress_indicator_widget.dart';
import 'package:test1/widgets/custom_button.dart';

class OnboardingPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OnPoardController controller = Get.put(OnPoardController());
    return Scaffold(
      backgroundColor: AppColors.onPoardColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 100,
              left: 59,
              child: SvgPicture.asset(
                'assets/images/Highlight_05.svg',
                height: 30,
                width: 27,
              ),
            ),
            Positioned(
              top: 160,
              right: 59,
              child: SvgPicture.asset(
                'assets/images/Misc_04.svg',
                height: 45,
                width: 45,
              ),
            ),
            Column(
              children: [
                SizedBox(height: 310),
                Center(
                  child: Column(
                    children: [
                      Text(
                        ' WELCOME TO \nBYTE BOUTIQUE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: AppColors.fontonPoardColor),
                      ),
                      SizedBox(height: 19),
                      SvgPicture.asset(
                        'assets/images/Vector.svg',
                        height: 18,
                        width: 134,
                      ),
                      SizedBox(height: 130),
                      Obx(() {
                        return Align(
                          alignment: Alignment.center,
                          child: ProgressIndicatorWidget(
                              currentPage: controller.currentIndex.value),
                        );
                      }),
                      SizedBox(height: 130),
                      CustomButton(
                          text: 'Get Started',
                          backgroundColor: AppColors.fontonPoardColor,
                          textColor: AppColors.onPoardColor,
                          onpressed: controller.nextPage
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 540,
              right: 30,
              child: SvgPicture.asset(
                'assets/images/Highlight_10.svg',
                height: 100,
                width: 150,
              ),
            ),
            Positioned(
              top: 600,
              left: 29,
              child: Transform.rotate(
                angle: -1.7,
                child: SvgPicture.asset(
                  'assets/images/Highlight_10.svg',
                  height: 100,
                  width: 150,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OnPoardController controller = Get.put(OnPoardController());

    return Scaffold(
      backgroundColor: AppColors.onPoardColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 116,
              left: 27,
              child: SvgPicture.asset(
                'assets/images/Highlight_10.svg',
                height: 100,
                width: 150,
              ),
            ),
            Positioned(
              top: 113,
              right: 26,
              child: SvgPicture.asset(
                'assets/images/Misc_04.svg',
                height: 45,
                width: 45,
              ),
            ),
            Column(
              children: [
                SizedBox(height: 310),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Let’s Start Journey',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: MySize.fontSizeXlg,
                            color: AppColors.fontonPoardColor),
                      ),
                      SizedBox(height: 75),
                      RichText(
                        textAlign: TextAlign.center, // محاذاة النص في المنتصف
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'There Are Many Beautiful And Attractive\n',
                              style: TextStyle(
                                fontSize: MySize.fontSizeLg,
                                color: AppColors.fontColor1,
                              ),
                            ),
                            TextSpan(
                              text: 'Plants To Your Room',
                              style: TextStyle(
                                fontSize: MySize.fontSizeLg,
                                color: AppColors.fontColor1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 75),
                      Obx(() {
                        return Align(
                          alignment: Alignment.center,
                          child: ProgressIndicatorWidget(
                              currentPage: controller.currentIndex.value),
                        );
                      }),
                      SizedBox(height: 155),
                      CustomButton(
                          text: 'Next',
                          backgroundColor: AppColors.fontonPoardColor,
                          textColor: AppColors.onPoardColor,
                      onpressed: controller.nextPage,),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OnPoardController controller = Get.put(OnPoardController());
    return Scaffold(
      backgroundColor: AppColors.onPoardColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 108,
              left: 52,
              child: SvgPicture.asset(
                'assets/images/Misc_04.svg',
                height: 77,
                width: 77,
              ),
            ),
            Column(
              children: [
                SizedBox(height: 330),
                Center(
                  child: Column(
                    children: [
                      RichText(
                        textAlign: TextAlign.center, // محاذاة النص في المنتصف
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'You Have The\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: MySize.fontSizeXlg,
                                color: AppColors.fontonPoardColor,
                              ),
                            ),
                            TextSpan(
                              text: 'Power To',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: MySize.fontSizeXlg,
                                color: AppColors.fontonPoardColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      RichText(
                        textAlign: TextAlign.center, // محاذاة النص في المنتصف
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'There Are Many Beautiful And Attractive\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: MySize.fontSizeLg,
                                color: AppColors.fontColor1,
                              ),
                            ),
                            TextSpan(
                              text: 'Plants To Your Room',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: MySize.fontSizeLg,
                                color: AppColors.fontColor1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 76),
                      Obx(() {
                        return Align(
                          alignment: Alignment.center,
                          child: ProgressIndicatorWidget(
                              currentPage: controller.currentIndex.value),
                        );
                      }),
                      SizedBox(height: 155),
                      CustomButton(
                          text: 'Next',
                          backgroundColor: AppColors.fontonPoardColor,
                          textColor: AppColors.onPoardColor,
                          onpressed: controller.goToLogin,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

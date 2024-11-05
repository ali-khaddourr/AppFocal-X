import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test1/view/login_screen/screen/login_screen.dart';

import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/my_size.dart';
import '../../../widgets/custom_button.dart';
import '../controller/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: RegisterController(),
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 66, bottom: 11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.ColorWidget,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Register Account',
                        style: TextStyle(
                          fontSize: MySize.fontSizeXlg,
                          color: AppColors.onPoardColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Fill your details or continue with\n',
                              style: TextStyle(
                                  fontSize: MySize.fontSizeLg,
                                  color: AppColors.fontColor2),
                            ),
                            TextSpan(
                              text: 'social media',
                              style: TextStyle(
                                  fontSize: MySize.fontSizeLg,
                                  color: AppColors.fontColor2),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Name',
                        style: TextStyle(
                            fontSize: MySize.fontSizeLg,
                            color: AppColors.onPoardColor),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.ColorWidget,
                            borderRadius:
                            BorderRadius.circular(MySize.borderRedius)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: controller.nameController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'xxxxxxxx',
                                hintStyle: TextStyle(
                                    color: AppColors.hintColor,
                                    fontSize: MySize.fontSizeMd)),

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Email Address',
                        style: TextStyle(
                            fontSize: MySize.fontSizeLg,
                            color: AppColors.onPoardColor),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.ColorWidget,
                            borderRadius:
                                BorderRadius.circular(MySize.borderRedius)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: controller.emailController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'xyz@gmail.com',
                                hintStyle: TextStyle(
                                    color: AppColors.hintColor,
                                    fontSize: MySize.fontSizeMd)),
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(
                            fontSize: MySize.fontSizeLg,
                            color: AppColors.onPoardColor),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Obx(
                        () => Container(
                          decoration: BoxDecoration(
                              color: AppColors.ColorWidget,
                              borderRadius:
                                  BorderRadius.circular(MySize.borderRedius)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              controller: controller.passwordController,
                              obscureText: controller.isPasswordHidden.value,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: controller.isPasswordHidden.value
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility),
                                    onPressed: () {
                                      controller.isVisibility();
                                    },
                                  ),
                                  border: InputBorder.none,
                                  hintText: '******',
                                  hintStyle: TextStyle(
                                      color: AppColors.hintColor,
                                      fontSize: MySize.fontSizeMd)),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Recovery Password',
                              style: TextStyle(color: AppColors.fontColor2),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      CustomButton(
                          text: controller.isloading?'Loading ..':'Register',
                          backgroundColor: Colors.green,
                          textColor: AppColors.white,
                      onpressed:(){ controller.signUp(controller.nameController.text,
                          controller.emailController.text,
                          controller.passwordController.text);}),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(MySize.borderRedius),
                                color: AppColors.ColorWidget,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 14, bottom: 14, right: 78, left: 78),
                                child: Row(children: [
                                  SvgPicture.asset('assets/icons/google.svg'),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Text(
                                    'Sign In with Google ',
                                    style:
                                        TextStyle(fontSize: MySize.fontSizeMd),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already Have Account?',
                              style: TextStyle(
                                  color: AppColors.fontColor3,
                                  fontSize: MySize.fontSizeLg)),
                          TextButton(
                            onPressed: () {
                              Get.to(LoginScreen());
                            },
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                  fontSize: MySize.fontSizeLg,
                                  color: AppColors.black),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

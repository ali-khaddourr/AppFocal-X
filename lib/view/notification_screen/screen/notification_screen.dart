import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/core/const_data/my_size.dart';

import '../../../core/const_data/app_colors.dart';
import '../../../widgets/custom_icon_back.dart';
import '../controller/notification_controller.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: NotificationController(),
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 66, bottom: 16),
                  child: Row(
                    children: [
                      CustomIconBack(),
                      Spacer(),
                      Text(
                        'Notifications',
                        style: GoogleFonts.raleway(
                          fontSize:MySize.fontSizeLg,
                          color: AppColors.onPoardColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.delete_outline))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recent',
                        style:GoogleFonts.raleway(
                          fontSize:18,
                          color: AppColors.onPoardColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListView.builder(
                        itemCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                  height: 100,
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Container(
                                          child: Image.asset(
                                            '${controller.imageRecent[index]}',
                                            width: 100,
                                            height: 100,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 9,
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 25,
                                                top: 14,
                                                right: 14,
                                                bottom: 8),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '${controller.titleRecent[index]}',
                                                  softWrap: true,
                                                  style: GoogleFonts.raleway(
                                                    fontSize: MySize.fontSizeMd,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  '${controller.subTitleRecent[index]}',
                                                  softWrap: true,
                                                  style:
                                                  GoogleFonts.raleway(
                                                    fontSize: MySize.fontSizeSm,
                                                    color:AppColors.fontColor2
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                '${controller.dateRecent[index]}',
                                                softWrap: true,
                                                style:  GoogleFonts.raleway(
                                                    fontSize: MySize.fontSizeSm,
                                                    color:AppColors.fontColor2
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                              ),
                              SizedBox(height: 16,)
                            ],
                          );
                        },
                      ),
                      Text(
                        'Yesterday',
                        style: GoogleFonts.raleway(
                          fontSize:18,
                          color: AppColors.onPoardColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListView.builder(
                        itemCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 100,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        child: Image.asset(
                                          '${controller.imageYesterday[index]}',
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 9,
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 25,
                                              top: 14,
                                              right: 14,
                                              bottom: 8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${controller.titleYesterday[index]}',
                                                softWrap: true,
                                                style: GoogleFonts.raleway(
                                                  fontSize: MySize.fontSizeMd,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                '${controller.subTitleYesterday[index]}',
                                                softWrap: true,
                                                style:
                                                GoogleFonts.raleway(
                                                    fontSize: MySize.fontSizeSm,
                                                    color:AppColors.fontColor2
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Text(
                                              '${controller.dateYesterday[index]}',
                                              softWrap: true,
                                              style:  GoogleFonts.raleway(
                                                  fontSize: MySize.fontSizeSm,
                                                  color:AppColors.fontColor2
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 16,)
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/my_size.dart';
import '../../../widgets/custom_icon_back.dart';
import '../controller/search_controller.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ColorWidget,
      body: GetBuilder(
        init: SearchControllerr(),
        builder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 66),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomIconBack(),
                      Spacer(),
                      Text(
                        'Search',
                        style: GoogleFonts.raleway(
                          fontSize: 20,
                          color: AppColors.onPoardColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: GoogleFonts.raleway(
                            fontSize: MySize.fontSizeLg,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius:
                                BorderRadius.circular(MySize.borderRedius),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(
                                        MySize.borderRedius),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.search,
                                          color: AppColors.hintColor,
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: controller.searchController,
                                          decoration: InputDecoration(
                                            hintText: '${controller.hintText}',
                                            hintStyle: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: AppColors.hintColor,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 1,
                                        height: 35,
                                        color: AppColors.fontColor2,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.mic_none,
                                          color: AppColors.hintColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Shirt',
                    style: GoogleFonts.raleway(
                      color: AppColors.onPoardColor,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 16,),
                  GestureDetector(
                    onTap: (){
                      controller.searchFast('New T-Shirt');
                    },
                      child: Row(
                        children: [
                          Icon(Icons.access_time,color: Colors.grey),
                          SizedBox(width: 12,),
                          Text('New T-Shirt',style: TextStyle(color:AppColors.onPoardColor),)
                        ],
                      ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      controller.searchFast('Top T-shirt');

                    },
                    child: Row(
                      children: [
                        Icon(Icons.access_time,color: Colors.grey,),
                        SizedBox(width: 12,),
                        Text('Top T-shirt',style: TextStyle(color:AppColors.onPoardColor),)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      controller.searchFast('Programmer');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.access_time,color: Colors.grey,),
                        SizedBox(width: 12,),
                        Text('Programmer',style: TextStyle(color:AppColors.onPoardColor),)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      controller.searchFast('Shirt');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.access_time,color: Colors.grey,),
                        SizedBox(width: 12,),
                        Text('Shirt',style: TextStyle(color:AppColors.onPoardColor),)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      controller.searchFast('Black Shirt');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.access_time,color: Colors.grey,),
                        SizedBox(width: 12,),
                        Text('Black Shirt',style: TextStyle(color:AppColors.onPoardColor),)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      controller.searchFast('White Shirt');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.access_time,color: Colors.grey,),
                        SizedBox(width: 12,),
                        Text('White Shirt',style: TextStyle(color:AppColors.onPoardColor),)
                      ],
                    ),
                  ),
                ],

              ),
            ),
          );
        },
      ),
    );
  }
}

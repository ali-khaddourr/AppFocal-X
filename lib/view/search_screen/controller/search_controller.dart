import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchControllerr extends GetxController{
  String hintText = 'Search Your Shirt';
  TextEditingController searchController =TextEditingController();
  void searchFast(String value){
    hintText=value;
    searchController.text=hintText;
    update();
  }
}
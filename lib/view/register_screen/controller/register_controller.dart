import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/core/service/link.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../core/const_data/const_data.dart';

class RegisterController extends GetxController{
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isPasswordHidden = true.obs;


  void isVisibility(){
    isPasswordHidden.value = !isPasswordHidden.value;
  }
var isloading= false;
  Future<void> signUp(String name , String email , String password)async{
     isloading= true;
     update();
     var decodeResponse;
     try {
       var url = Uri.parse('${AppLink.register}');
       var response = await http.post(url,
           headers: {
             'Accept': 'application/json',
           },
           body: {
             'name': name,
             'email': email,
             'password': password,
             'fcm_token': '${ConstData.FCM}'
           }
       );
       decodeResponse = json.decode(response.body);
       if(response.statusCode==200) {
         print(response.body);
         isloading = false;
         update();
         Get.snackbar(
           'Hello ..',
           '${decodeResponse['message']}',
           snackPosition: SnackPosition.BOTTOM,
           backgroundColor: Colors.green,
           colorText: Colors.white,
           duration: Duration(seconds: 3),
         );

       }
       else {
         isloading = false;
         update();
         Get.snackbar(
           'Error', // عنوان الإشعار
           '${decodeResponse['message']}',
           snackPosition: SnackPosition.BOTTOM,
           backgroundColor: Colors.red,
           colorText: Colors.white,
           duration: Duration(seconds: 3),
         );
       }

     }catch(e){
       print('the error issssss ${e}');
       isloading = false;
       update();
     }
  }

  getToken() async{
    ConstData.FCM = await FirebaseMessaging.instance.getToken();

    print("+++++++++++++++++++++++++++++${ConstData.FCM}+++++++++++++++++++++++++++++");
  }
@override
  void onInit() {
  getToken();
    // TODO: implement onInit
    super.onInit();
  }
}
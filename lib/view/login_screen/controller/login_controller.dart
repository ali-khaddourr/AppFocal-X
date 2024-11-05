import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test1/core/service/my_service.dart';
import '../../../core/const_data/const_data.dart';
import '../../../core/service/link.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isPasswordHidden = true.obs;

  void isVisibility(){
    isPasswordHidden.value = !isPasswordHidden.value;
  }
  var isloading= false;
  Future<void> signIn(String email , String password)async{
    isloading= true;
    update();
    var decodeResponse;
    try {
      var url = Uri.parse('${AppLink.login}');
      var response = await http.post(url,
          headers: {
            'Accept': 'application/json',
          },
          body: {
            'email': email,
            'password': password,
            'fcm_token': '${ConstData.FCM}'
          }
      );
      decodeResponse = json.decode(response.body);
      if(response.statusCode==200) {
        var myToken = decodeResponse['data']['access_token'];
        MyService.shared.setString('token', myToken);
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
          'Error',
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
}
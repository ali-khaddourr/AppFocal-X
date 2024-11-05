import 'dart:async';
import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:get_storage/get_storage.dart';
import 'package:test1/core/service/my_service.dart';

class ConstData {
  static String token = '';

  static bool isLoading = false;

  static String? FCM = '';
  static const String map_key = "";
GetStorage getStorage = GetStorage();
  getData()async{
    await getStorage.write('key', 'value');
  }

  static Future<void> updateToken() async {
    var url = Uri.parse('aaaaaaaaaaaaalllllllllllliiiiiiiiiii');
    final response = await http.post(
      url,
      headers: {},
      body: {},
    );
    if (response.statusCode == 200) {
      final responseDecode = json.decode(response.body);
      token = responseDecode['token'];
      isLoading = true;
      print('Token updated is $token');
    } else {
      print('Faild to update token${response.statusCode}');
    }
    //  update request token
  }

  static Future<void> startTokenupdatedata() async {
    Timer.periodic(Duration(seconds: 20), (timer) {
      updateToken();
    });
  }
}

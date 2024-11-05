import 'package:test1/core/const_data/const_data.dart';

class AppLink{
  ///Remote Address
  static String appRoot = "https://task.focal-x.com";
  //storage images
  static String imageWithRoot = "$appRoot/storage";
  static String imageWithoutRoot = "$appRoot";

  //Api
  static String serverApiRoot="$appRoot/api";


  static String login = "$serverApiRoot/login";
  static String register = "$serverApiRoot/register";
  static String home = "$serverApiRoot/home";

  ///Local Address
  static String req = "127.0.0.1";


  Map<String,String>getHeader(){

    Map<String,String>mainHeader ={
      'Content-Type':'Application/json',
      'Accept':'Application/json',
      'X-Requested-With':'XMLHttpRequest',
    };
    return mainHeader;
  }

  Map<String,String>getHeaderToken(){

    Map<String,String>mainHeader ={
      'Content-Type':'Application/json',
      'Accept':'Application/json',
      'X-Requested-With':'XMLHttpRequest',
      'Authorization':'Bearer${ConstData.token}'
    };
    return mainHeader;
  }
}
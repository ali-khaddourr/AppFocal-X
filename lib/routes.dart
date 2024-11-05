import 'package:get/get.dart';
import 'package:test1/view/login_screen/screen/login_screen.dart';
import 'package:test1/view/notification_screen/screen/notification_screen.dart';
import 'package:test1/view/onpoard_screen/screen/onpoard_screen.dart';
import 'package:test1/view/register_screen/screen/register_screen.dart';
import 'package:test1/view/search_screen/screen/search_screen.dart';
import 'package:test1/view/splash_screen/screen/splash_screen.dart';

List<GetPage<dynamic>>? routes = [

  GetPage(name: '/onpoardScreen',
      page: ()=> const OnPoardScreen()),
  GetPage(name: '/loginScreen',
      page: ()=> const LoginScreen()),
  GetPage(name: '/registerScreen',
      page: ()=> const RegisterScreen()),
  GetPage(name: '/notificationScreen',
      page: ()=> const NotificationScreen()),
  GetPage(name: '/searchScreen',
      page: ()=> const SearchScreen()),
  GetPage(name: '/splashScreen',
      page: ()=> const SplashScreen()),

];

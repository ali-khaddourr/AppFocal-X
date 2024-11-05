import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/binding/initial_bindings.dart';
import 'package:test1/core/service/my_service.dart';
import 'package:test1/core/service/routes.dart';
import 'package:test1/routes.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  MyService();
  await initialServices();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      initialBinding: initialBindings(),
      getPages: routes,
      initialRoute: Routes.splashScreen,
      debugShowCheckedModeBanner: false,
    );
  }
}

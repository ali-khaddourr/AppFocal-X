import 'package:get/get.dart';
import 'package:test1/core/class/curd.dart';

//initial controllers
class initialBindings extends Bindings {
  @override
  void dependencies() {

    Get.put(Crud());
  }
}

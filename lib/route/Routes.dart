import 'package:calculator/controller/calculation.dart';
import 'package:calculator/controller/theme.dart';
import 'package:get/instance_manager.dart';

class Routs implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Themes());
    Get.lazyPut(() => Calculation());
  }
}

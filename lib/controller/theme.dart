import 'package:get/get.dart';

class Themes extends GetxController {
  bool isDark = true;
  darkTheme() {
    isDark = true;
    update();
  }
  lightTheme() {
    isDark = false;
    update();
  }
}

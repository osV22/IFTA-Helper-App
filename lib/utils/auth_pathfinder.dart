import 'package:alpha_build/controllers/auth_controller.dart';
import 'package:alpha_build/pages/app.dart';
import 'package:alpha_build/pages/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AuthPathfinder extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthController>().user != null)
          ? HomePage()
          : HomePage(); //! you want to set this to `LoginPage()` with when you add your API
    });
  }
}

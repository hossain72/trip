import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final hidePassword = true.obs;
  final hideConfirmPassword = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  passwordHide() {
    hidePassword.value = !hidePassword.value;
    update();
  }

  confirmPasswordHide() {
    hideConfirmPassword.value = !hideConfirmPassword.value;
    update();
  }
}

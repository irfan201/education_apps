import 'package:education_apps/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  var obscureText = true.obs;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  


 void login() {
    if (formKey.currentState!.validate()) {
      if (nameController.text == "irfan" && emailController.text == 'irfan@gmail.com' && passwordController.text == 'irfan123') {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.snackbar('Error', 'Invalid email or password');
      }
    }
  }

  @override
  void onInit() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController.text = 'irfan';
    emailController.text = 'irfan@gmail.com';
    passwordController.text = 'irfan123';
    super.onInit();


  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
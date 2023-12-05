import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final emailTEController = TextEditingController();
  final passwordTEController = TextEditingController();


  @override
  void onInit() {
    super.onInit();
    emailTEController.text = '';
    passwordTEController.text = '';
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailTEController.dispose();
    passwordTEController.dispose();
  }


  String? emailValidation(String email) {
    if (email.isEmpty) {
      return 'Please enter a valid Email';
    }
    return null;
  }

  String? passwordValidation(String password) {
    if (password.length <= 8) {
      return 'Please enter 8 digit password';
    }
    return null;
  }

  void checkLogin() {
    if (loginFormKey.currentState!.validate()) {
          Get.snackbar('Login', 'Login successfully');
        } else {
          Get.snackbar('Login', 'Invalid email or password');
        }
          emailTEController.clear();
          passwordTEController.clear();
      }

  }


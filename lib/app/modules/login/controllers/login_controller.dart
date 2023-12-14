

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final emailTEController = TextEditingController();
  final passwordTEController = TextEditingController();
  final hidePassword = true.obs;
  final rememberMe = false.obs;
  final localStorage = GetStorage();
  bool loginVerificationInProgress = false;


  static loginUser(String email, String password, BuildContext context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email, password: password);

      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('You are logged in')));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No user found')));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Password incorrect')));
      }
    }
  }


  @override
  void onInit() {
    super.onInit();
    emailTEController.text = '';
    passwordTEController.text = '';
    update();
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
    update();
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
}


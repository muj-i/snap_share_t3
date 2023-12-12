import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class ForgotPasswordController extends GetxController {
  final TextEditingController emailTEController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  bool _forgotPasswordInProgress = false;
  bool get forgotPasswordInProgress => _forgotPasswordInProgress;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    emailTEController.text = '';
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailTEController.dispose();
  }

  String? emailValidation(String email) {
    if (email.isEmpty) {
      return 'Please enter a valid Email';
    }
    return null;
  }
  Future<void> forgotPassword(String email) async {
    _forgotPasswordInProgress= true;
    update();
      await _auth.sendPasswordResetEmail(email: email)
          .then((value) {
        Get.snackbar("Success",
            "We have send to your email recover password, Please Check your Email",
            backgroundColor: Colors.green.withOpacity(0.5));
        Get.offNamed(Routes.LOGIN);
        emailTEController.clear();
      }).onError((error, stackTrace) {
        print(error);
      });
    _forgotPasswordInProgress= false;
    update();


  }

}

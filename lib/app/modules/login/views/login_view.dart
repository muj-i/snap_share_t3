import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snap_share_t3/app/modules/login/views/widgets/login_input_textfield.dart';
import 'package:snap_share_t3/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
    const LoginView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        leading: BackButton(
          onPressed: () {
            Get.back();
            // Get.off(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: controller.loginFormKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Text(
                    'Enter your email and password',
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Login_Input_TextField(controller: controller),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 120,
                          vertical: 15,
                        ),
                        disabledBackgroundColor: Colors.grey,
                        disabledForegroundColor: Colors.white70,
                      ),
                      onPressed: () {

                      if(controller.loginFormKey.currentState!.validate()){
                       LoginController.loginUser(controller.emailTEController.text.trim(), controller.passwordTEController.text, context);
                       controller.emailTEController.clear();
                       controller.passwordTEController.clear();
                       Get.toNamed(Routes.BOTTOM_NAV_LAYOUT);
                      }else{
                        const GetSnackBar(message: 'Incorrect user information');
                      }
                      },

                      child: const Text(
                        'Log In',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

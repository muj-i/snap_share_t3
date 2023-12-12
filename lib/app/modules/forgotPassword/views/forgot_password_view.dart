import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common/utils/AssetsUtils.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),

      ),
      body: Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(AssetsUtils.forgot,height: 180,width: 140,),
              const SizedBox(height: 24,),
              TextFormField(
                 controller: controller.emailTEController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Padding(
                      padding: EdgeInsetsDirectional.only(start: 10.0),
                      child: Image(image: AssetImage(AssetsUtils.envelop )),
                    ),
                  ),
                  validator: (value) {
                    return controller.emailValidation(value!);
                  }
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: double.infinity,
                child: GetBuilder<ForgotPasswordController>(
                  builder: (controller) {
                    if(controller.forgotPasswordInProgress){
                      return const Center(child: CircularProgressIndicator(),);
                    }
                    return ElevatedButton(
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
                        if(controller.formKey.currentState!.validate()) {
                        controller.forgotPassword(controller.emailTEController.text.trim());
                        }else{
                          Get.snackbar("Alert!", "Please Enter a Valid email");
                        }
                      },

                      child: const Text(
                        'Forgot Password',
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

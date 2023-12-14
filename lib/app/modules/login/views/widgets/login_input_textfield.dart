import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snap_share_t3/app/common/utils/AssetsUtils.dart';

import '../../controllers/login_controller.dart';

class Login_Input_TextField extends StatelessWidget {
  const Login_Input_TextField({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          children: [
            Text(
              'Email',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.black,
                  ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
              controller: controller.emailTEController,
              onChanged: (_) {
                controller.emailTEController;
              },
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
              }),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              'Password',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.black,
                  ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),

        Obx( () => TextFormField(
            onChanged: (_) {
              controller.passwordTEController;
            },
                controller: controller.passwordTEController,
                obscureText: controller.hidePassword.value,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: 'Input password',
                  prefixIcon:const Image(image: AssetImage(AssetsUtils.lock)),
                  suffixIcon: IconButton( onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                    icon: Image(image:AssetImage(controller.hidePassword.value ? AssetsUtils.eyeslash : AssetsUtils.eye)),
                  ),
                ),
                validator: (value) {
                  return controller.passwordValidation(value!);
                }),
        ),

        const SizedBox(
          height: 8,
        ),
        Container(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Obx(() => Checkbox(
                  value: controller.rememberMe.value,
                  onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value,
                ),
              ),
              const Text('Save password')
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}

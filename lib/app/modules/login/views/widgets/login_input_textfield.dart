import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snap_share_t3/app/common/utils/AssetsUtils.dart';

import '../../../../routes/app_pages.dart';
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
        TextFormField(
            onChanged: (_) {
              controller.passwordTEController;
            },
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              hintText: 'Input password',
              prefixIcon: Padding(
                padding: EdgeInsetsDirectional.only(start: 10.0),
                child: Image(image: AssetImage(AssetsUtils.lock)),
              ),
              suffixIcon: Padding(
                padding: EdgeInsetsDirectional.only(start: 10.0),
                child: Image(image: AssetImage(AssetsUtils.eyeslash)),
              ),
            ),
            validator: (value) {
              return controller.passwordValidation(value!);
            }),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  Checkbox(
                    value: isBlank,
                    onChanged: (value) => isBlank,
                  ),
                  const Text('Save password')
                ],
              ),
            ),
            const Spacer(),
            TextButton(onPressed: (){
              Get.toNamed(Routes.FORGOT_PASSWORD);

            },
                child:
            const Text("Forgot Password"))
          ],
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}

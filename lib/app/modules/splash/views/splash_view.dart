import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:snap_share_t3/app/modules/login/views/login_view.dart';
import 'package:snap_share_t3/app/modules/signup/views/signup_view.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'SocialLive',
                  style: TextStyle(
                    color: Color(0xFF101828),
                    fontSize: 24,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.w400,
                    height: 0.03,
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        Get.to(const SignupView());
                      },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color(0xFF4378FF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          height: 0.10,
                        ),
                      ),),
                ),
                const SizedBox(height: 12,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        Get.toNamed(Routes.LOGIN);
                      },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor:Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Log In',
                            style: TextStyle(
                              color: Color(0xFF4378FF),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 0.10,
                            ),),
                          Icon(Icons.keyboard_arrow_down,color: Color(0xFF4378FF),size: 28,)
                        ],
                      ),)
                ),

              ],
            ),
          ),
        ));
  }
}

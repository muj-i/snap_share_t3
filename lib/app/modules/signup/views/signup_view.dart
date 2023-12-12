import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:snap_share_t3/app/modules/home/views/home_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:snap_share_t3/app/modules/login/views/login_view.dart';

import '../../../routes/app_pages.dart';
import '../controllers/signup_controller.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key,}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _ConfpasswordController = TextEditingController();
  TextEditingController _FirstNameController = TextEditingController();
  TextEditingController _LastNameController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _FirstNameController.dispose();
    _LastNameController.dispose();
    super.dispose();
  }
  Future <void> SingUp()async{
    try {
      ///Circullar indecatter add in here
      showDialog(context: context, builder: (context){
        return const Center(child: CircularProgressIndicator(),);
      });
      if (confirmpassword()) {
        ///create user
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
        Navigator.of(context).pop();
        /// add user details
        addUserDetails(
            _FirstNameController.text.trim(),
            _LastNameController.text.trim(),
            _emailController.text.trim(),
            );
        Get.toNamed(Routes.BOTTOM_NAV_LAYOUT);
        if (mounted) {
          setState(() {
            _emailController.clear();
            _passwordController.clear();
            _ConfpasswordController.clear();
          });
        }
        Get.snackbar('Message','Register successful');
      }
    }
    catch(error){
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('This Email already register')));
    }

  }
  Future addUserDetails(String fstName, String lstName, String email,)async{
    await FirebaseFirestore.instance.collection('User').add({
      'first Name': fstName,
      'last Name': lstName,
      'email': email,

    });
  }
  bool confirmpassword(){
    if(_passwordController.text.trim() == _ConfpasswordController.text.trim()){
      return true;
    }else{
      return false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _globalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const SizedBox(
                  height: 100,
                ),
                /// Application some text in here
                const Center(
                  child: Text('Hello There!',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    'Sign Up below with your details',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                /// FirstName textfield in here..
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child:  TextFormField(
                      validator: (String? value){
                        if(value?.isEmpty ?? true){
                          return 'Enter First Name';
                        }
                        return null;
                      },
                      controller: _FirstNameController,
                      decoration: const InputDecoration(
                        hintText: 'First Name',
                        prefixIcon: Padding(
                          padding: EdgeInsetsDirectional.only(start: 10.0),
                          child: Icon(Icons.person_outline,color: Colors.black,),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                /// Last Name textfield in here..
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child:  TextFormField(
                      validator: (String? value){
                        if(value?.isEmpty ?? true){
                          return 'Enter Last Name';
                        }
                        return null;
                      },
                      controller: _LastNameController,
                      decoration: const InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsetsDirectional.only(start: 10.0),
                            child: Icon(Icons.person_outline,color: Colors.black,),
                          ),
                          border: InputBorder.none, hintText: 'Last Name'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                /// Email textfield in here..
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child:  TextFormField(
                      validator: (String? value){
                        if(value?.isEmpty ?? true){
                          return 'Enter email';
                        }
                        return null;
                      },
                      controller: _emailController,
                      decoration: const InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsetsDirectional.only(start: 10.0),
                            child: Icon(Icons.email_outlined,color: Colors.black,),
                          ),
                          border: InputBorder.none, hintText: 'Email'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                /// Password Textfield in here..
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child:  TextFormField(
                      validator: (String? value){
                        if(value?.isEmpty ?? true){
                          return 'Enter password';
                        }
                        return null;
                      },
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsetsDirectional.only(start: 10.0),
                            child: Icon(Icons.password,color: Colors.black,),
                          ),
                          border: InputBorder.none, hintText: 'Password'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                ///Confirm password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child:  TextFormField(
                      validator: (String? value){
                        if(value?.isEmpty ?? true){
                          return 'Enter ConfirmPassword';
                        }
                        return null;
                      },
                      controller: _ConfpasswordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsetsDirectional.only(start: 10.0),
                            child: Icon(Icons.password,color: Colors.black,),
                          ),
                          border: InputBorder.none, hintText: 'Confirm Password'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                /// sing in button
                GestureDetector(
                  onTap: (){
                    if(!_globalKey.currentState!.validate()){
                      return;
                    }
                    SingUp();

                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                            child: Text(
                              'Sing up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                /// Register text button in here.
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'I am a member?',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAndToNamed(Routes.LOGIN);
                      },
                      child: const Text(
                        'Log in now',
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

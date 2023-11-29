import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_details_controller.dart';

class ProfileDetailsView extends GetView<ProfileDetailsController> {
  const ProfileDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProfileDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

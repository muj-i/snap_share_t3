import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_post_controller.dart';

class CreatePostView extends GetView<CreatePostController> {
  const CreatePostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreatePostView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreatePostView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

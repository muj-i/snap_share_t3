import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_nav_layout_controller.dart';

class BottomNavLayoutView extends GetView<BottomNavLayoutController> {
  const BottomNavLayoutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavLayoutView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BottomNavLayoutView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:anj_test/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: const Center(
        child: Text('HomeView is working', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

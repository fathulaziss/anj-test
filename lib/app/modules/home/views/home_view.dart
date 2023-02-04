import 'package:anj_test/app/modules/home/controllers/home_controller.dart';
import 'package:anj_test/utils/app_asset.dart';
import 'package:anj_test/widgets/buttons/button_primary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 4),
            child: Image.asset(AppAsset.logo('logo_app.jpeg')),
          ),
          const SizedBox(height: 50),
          ButtonPrimary(
            label: 'Take a Photo',
            onPressed: () {
              controller.checkPermission();
            },
          ),
          const SizedBox(height: 20),
          ButtonPrimary(label: 'List Data', onPressed: () {}),
          const SizedBox(height: 20),
          ButtonPrimary(label: 'API Covid-19', onPressed: () {}),
        ],
      ),
    );
  }
}

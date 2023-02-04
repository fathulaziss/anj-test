import 'package:anj_test/app/modules/take_photo/controllers/take_photo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TakePhotoView extends GetView<TakePhotoController> {
  const TakePhotoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TakePhotoView'), centerTitle: true),
      body: const Center(
        child: Text('TakePhotoView is working', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
import 'dart:io';

import 'package:anj_test/app/modules/take_photo/controllers/take_photo_controller.dart';
import 'package:anj_test/widgets/buttons/button_primary.dart';
import 'package:anj_test/widgets/pages/page_default.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TakePhotoView extends GetView<TakePhotoController> {
  const TakePhotoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return PageDefault(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Image.file(
                File(controller.photo.value),
                width: 350,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'date : ${DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.parse(controller.date.value))}\nlatitude : ${controller.latitude.value}\nlongitude : ${controller.longitude.value}',
              style: const TextStyle(fontSize: 20),
            ),
            ButtonPrimary(label: 'Save', onPressed: () => controller.save()),
          ],
        ),
      );
    });
  }
}

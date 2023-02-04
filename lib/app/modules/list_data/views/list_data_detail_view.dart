import 'dart:io';

import 'package:anj_test/app/modules/list_data/controllers/list_data_controller.dart';
import 'package:anj_test/widgets/pages/page_default.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ListDataDetailView extends GetView<ListDataController> {
  const ListDataDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return PageDefault(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Image.file(
                File(controller.selectedData['photo']),
                width: 350,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'date : ${DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.parse(controller.selectedData['date']))}\nlatitude : ${controller.selectedData['latitude']}\nlongitude : ${controller.selectedData['longitude']}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      );
    });
  }
}

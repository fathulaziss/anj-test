import 'package:anj_test/app/modules/list_data/controllers/list_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListDataView extends GetView<ListDataController> {
  const ListDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListDataView'), centerTitle: true),
      body: const Center(
        child: Text('ListDataView is working', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

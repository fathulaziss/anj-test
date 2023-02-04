import 'package:anj_test/app/modules/covid/controllers/covid_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CovidView extends GetView<CovidController> {
  const CovidView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CovidView'), centerTitle: true),
      body: const Center(
        child: Text('CovidView is working', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

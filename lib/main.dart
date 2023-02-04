// ignore_for_file: always_use_package_imports

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'ANJ TEST',
      initialRoute: Routes.home,
      getPages: AppPages.routes,
    ),
  );
}

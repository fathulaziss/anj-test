import 'dart:convert';

import 'package:anj_test/app/routes/app_pages.dart';
import 'package:anj_test/utils/app_storage.dart';
import 'package:get/get.dart';

class ListDataController extends GetxController {
  RxList listData = [].obs;
  RxMap selectedData = {}.obs;
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future<void> getData() async {
    final data = await AppStorage.read(key: 'data');

    if (data.isNotEmpty) {
      listData(jsonDecode(data));
    }
  }

  void goToDetail(Map<String, dynamic> data) {
    selectedData(data);
    Get.toNamed(Routes.listDataDetail);
  }
}

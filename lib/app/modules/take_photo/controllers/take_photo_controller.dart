import 'dart:convert';

import 'package:anj_test/utils/app_storage.dart';
import 'package:anj_test/widgets/others/show_dialog.dart';
import 'package:get/get.dart';

class TakePhotoController extends GetxController {
  final RxString photo = ''.obs;
  final RxDouble latitude = 0.0.obs;
  final RxDouble longitude = 0.0.obs;
  final RxString date = ''.obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() {
    final args = Get.arguments;
    if (args != null) {
      photo(args['photo']);
      latitude(args['latitude']);
      longitude(args['longitude']);
      date(args['date']);
    }
  }

  Future<void> save() async {
    var listData = [];
    final data = await AppStorage.read(key: 'data');

    if (data.isNotEmpty) {
      listData = jsonDecode(data);
    }

    final newData = {
      'photo': photo.value,
      'latitude': latitude.value,
      'longitude': longitude.value,
      'date': date.value,
    };

    listData.add(newData);

    final encodeData = jsonEncode(listData);
    await AppStorage.write(key: 'data', value: encodeData);

    showPopUpInfo(
      title: 'Informasi',
      description: 'Data berhasil disimpan',
      onPressed: () {
        Get
          ..back()
          ..back();
      },
    );
  }
}

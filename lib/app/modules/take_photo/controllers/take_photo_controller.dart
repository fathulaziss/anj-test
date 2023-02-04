import 'package:get/get.dart';

class TakePhotoController extends GetxController {
  final RxString photo = ''.obs;
  final RxDouble latitude = 0.0.obs;
  final RxDouble longitude = 0.0.obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {}

  void getData() {
    final args = Get.arguments;
    if (args != null) {
      photo(args['photo']);
      latitude(args['latitude']);
      longitude(args['longitude']);
    }
  }
}

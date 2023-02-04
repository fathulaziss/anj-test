import 'package:anj_test/app/modules/take_photo/controllers/take_photo_controller.dart';
import 'package:get/get.dart';

class TakePhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TakePhotoController>(() => TakePhotoController());
  }
}

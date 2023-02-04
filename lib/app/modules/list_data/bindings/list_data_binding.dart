import 'package:anj_test/app/modules/list_data/controllers/list_data_controller.dart';
import 'package:get/get.dart';

class ListDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListDataController>(() => ListDataController());
  }
}

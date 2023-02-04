import 'package:anj_test/app/modules/covid/controllers/covid_controller.dart';
import 'package:get/get.dart';

class CovidBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CovidController>(() => CovidController());
  }
}

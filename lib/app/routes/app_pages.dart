import 'package:anj_test/app/modules/covid/bindings/covid_binding.dart';
import 'package:anj_test/app/modules/covid/views/covid_view.dart';
import 'package:anj_test/app/modules/home/bindings/home_binding.dart';
import 'package:anj_test/app/modules/home/views/home_view.dart';
import 'package:anj_test/app/modules/list_data/bindings/list_data_binding.dart';
import 'package:anj_test/app/modules/list_data/views/list_data_view.dart';
import 'package:anj_test/app/modules/take_photo/bindings/take_photo_binding.dart';
import 'package:anj_test/app/modules/take_photo/views/take_photo_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.takePhoto,
      page: () => const TakePhotoView(),
      binding: TakePhotoBinding(),
    ),
    GetPage(
      name: _Paths.listData,
      page: () => const ListDataView(),
      binding: ListDataBinding(),
    ),
    GetPage(
      name: _Paths.covid,
      page: () => const CovidView(),
      binding: CovidBinding(),
    ),
  ];
}

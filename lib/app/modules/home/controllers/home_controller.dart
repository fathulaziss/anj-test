import 'package:anj_test/app/routes/app_pages.dart';
import 'package:anj_test/widgets/others/show_dialog.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeController extends GetxController {
  RxBool isCameraGranted = false.obs;
  RxBool isLocationGranted = false.obs;

  Future<void> takePhoto() async {
    final picker = ImagePicker();
    final file = await picker.pickImage(source: ImageSource.camera);
    final location = await Geolocator.getCurrentPosition();
    if (file != null) {
      await Get.toNamed(
        Routes.takePhoto,
        arguments: {
          'photo': file.path,
          'latitude': location.latitude,
          'longitude': location.longitude,
          'date': DateTime.now().toString(),
        },
      );
    }
  }

  Future<void> checkPermission() async {
    final isCameraGranted = await Permission.camera.isGranted;
    final isLocationGranted = await Permission.location.isGranted;
    if (isCameraGranted && isLocationGranted) {
      await takePhoto();
    } else {
      showPopUpInfo(
        title: 'Permintaan Akses',
        description:
            'Aplikasi meminta izin untuk mengakses Kamera dam Lokasi, ANJ menjamin penggunaan data hanya untuk keperluan aplikasi',
        onPressed: () async {
          Get.back();
          await requestCameraPermission();
          await requestLocationPermission();
        },
      );
    }
  }

  Future<void> requestCameraPermission() async {
    final cameraStatus = await Permission.camera.request();
    if (cameraStatus.isGranted) {
      isCameraGranted(true);
      if (isCameraGranted.value && isLocationGranted.value) {
        await takePhoto();
      }
    } else if (cameraStatus.isPermanentlyDenied || cameraStatus.isRestricted) {
      isCameraGranted(false);
      showPopUpInfo(
        title: 'Informasi',
        description: 'Izin Kamera tidak diberikan, buka pengaturan',
        labelButton: 'OK',
        onPressed: () async {
          Get.back();
          await openAppSettings();
        },
      );
    } else {
      isCameraGranted(false);
      showToast(message: 'Akses Kamera Tidak Diberikan');
    }
  }

  Future<void> requestLocationPermission() async {
    final locationStatus = await Permission.location.request();
    if (locationStatus.isGranted) {
      isLocationGranted(true);
      if (isCameraGranted.value && isLocationGranted.value) {
        await takePhoto();
      }
    } else if (locationStatus.isPermanentlyDenied ||
        locationStatus.isRestricted) {
      isLocationGranted(false);
      showPopUpInfo(
        title: 'Informasi',
        description: 'Izin Lokasi tidak diberikan, buka pengaturan',
        labelButton: 'OK',
        onPressed: () async {
          Get.back();
          await openAppSettings();
        },
      );
    } else {
      isLocationGranted(false);
      showToast(message: 'Akses Lokasi Tidak Diberikan');
    }
  }
}

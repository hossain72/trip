import 'package:get/get.dart';

import 'package:trip/app/modules/splash/controllers/auth_controller.dart';


class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
          () => AuthController(),
    );
  }
}

import 'package:get/get.dart';

import 'package:trip/app/modules/home/bindings/home_binding.dart';
import 'package:trip/app/modules/home/views/home_view.dart';
import 'package:trip/app/modules/login/bindings/login_binding.dart';
import 'package:trip/app/modules/login/views/login_view.dart';
import 'package:trip/app/modules/registration/bindings/registration_binding.dart';
import 'package:trip/app/modules/registration/views/registration_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION,
      page: () => RegistrationView(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}

import 'package:get/get.dart';

import 'package:trip/app/modules/bookingTrip/bindings/booking_trip_binding.dart';
import 'package:trip/app/modules/bookingTrip/views/booking_trip_view.dart';
import 'package:trip/app/modules/home/bindings/home_binding.dart';
import 'package:trip/app/modules/home/views/home_view.dart';
import 'package:trip/app/modules/login/bindings/login_binding.dart';
import 'package:trip/app/modules/login/views/login_view.dart';
import 'package:trip/app/modules/registration/bindings/registration_binding.dart';
import 'package:trip/app/modules/registration/views/registration_view.dart';
import 'package:trip/app/modules/tripDetails/bindings/trip_details_binding.dart';
import 'package:trip/app/modules/tripDetails/views/trip_details_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.REGISTRATION;

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
    GetPage(
      name: _Paths.TRIP_DETAILS,
      page: () => TripDetailsView(),
      binding: TripDetailsBinding(),
    ),
    GetPage(
      name: _Paths.BOOKING_TRIP,
      page: () => BookingTripView(),
      binding: BookingTripBinding(),
    ),
  ];
}

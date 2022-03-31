import 'package:get/get.dart';

import '../controllers/booking_trip_controller.dart';

class BookingTripBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookingTripController>(
      () => BookingTripController(),
    );
  }
}

import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/models/trip.dart';

class BookingTripController extends GetxController {
  late List bookedTripList = [];
  late final localStorage = GetStorage();
  @override
  void onInit() {
    super.onInit();
    //print(localStorage.read("bookingTrip"));
    print(localStorage.read("bookingTrip").runtimeType);
    bookedTripList = localStorage.read("bookingTrip") ?? [];
    update();
  }
}

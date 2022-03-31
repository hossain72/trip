

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/models/trip.dart';

class TripDetailsController extends GetxController {
  late final trip = Trip().obs;
  late final pageController = PageController();
  late final isBooking = false.obs;
  late List<dynamic> bookedTripList = [];
  late final localStorage = GetStorage();

  @override
  void onInit() {
    super.onInit();
    trip.value = Get.arguments;
    isBooking.value = trip.value.isBooked!;
    bookedTripList = localStorage.read("bookingTrip") ?? [];
    print(bookedTripList.runtimeType);
    update();
  }

  updateTrip(bool value) {
    isBooking.value = value;
    trip.value.isBooked = value;
    update();
    if (isBooking.value == true) {
      addBookedTrip();
    } else {
      cancelBookedTrip();
    }
  }

  addBookedTrip() {
    //print(bookedTripList.runtimeType);
    bookedTripList.add(trip.value);
    localStorage.write("bookingTrip", bookedTripList);
    //print(localStorage.read("bookingTrip").runtimeType);
    print(bookedTripList.runtimeType);
    update();
  }

  cancelBookedTrip() {
    bookedTripList.remove(trip.value);
    localStorage.write("bookingTrip", bookedTripList);
    print(bookedTripList.length);
    update();
  }
}

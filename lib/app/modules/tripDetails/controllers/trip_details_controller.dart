import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/models/trip.dart';

class TripDetailsController extends GetxController {
  late final trip = Trip().obs;
  late final pageController = PageController();
  late final isBooking = false.obs;
  late List<dynamic> bookedTripList = [];
  late final bookedTripId = "".obs;

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  late CollectionReference bookedTripRef;

  @override
  void onInit() {
    super.onInit();
    bookedTripRef = firebaseFirestore.collection("booked_trip");
    trip.value = Get.arguments;
    isBooking.value = trip.value.isBooked!;
    update();
  }

  updateTrip(bool value) {
    isBooking.value = value;
    trip.value.isBooked = value;
    update();
    if (isBooking.value == true) {
      addBookedTrip();
    } else {
      cancelBookedTrip(trip.value.id.toString());
    }
  }

  addBookedTrip() {
    bookedTripId.value = bookedTripRef.doc().id;
    trip.value.id = bookedTripId.value;
    bookedTripList.add(trip.value);
    bookedTripRef.doc(bookedTripId.value).set(trip.value.toJson());
    update();
  }

  cancelBookedTrip(String id) {
    bookedTripList.remove(trip.value);
    bookedTripRef.doc(id).delete();
    update();
  }
}

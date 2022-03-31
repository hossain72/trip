import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../data/models/trip.dart';

class BookingTripController extends GetxController {
  late final bookedTripList = [].obs;

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference bookedTripRef;

  @override
  void onInit() {
    super.onInit();
    bookedTripRef = firebaseFirestore.collection("booked_trip");
    bookedTripList.bindStream(getBookedTrips());
    update();
  }

  Stream<List<Trip>> getBookedTrips() => bookedTripRef
      .snapshots()
      .map((query) => query.docs.map((item) => Trip.fromMap(item)).toList());

}

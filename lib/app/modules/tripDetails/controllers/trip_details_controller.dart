import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/models/trip.dart';

class TripDetailsController extends GetxController {

  final trip = Trip().obs;
  final pageController =PageController();

  @override
  void onInit() {
    super.onInit();
    trip.value = Get.arguments;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}

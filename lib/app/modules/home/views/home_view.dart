import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'widgets/abroad_trip_widget.dart';
import 'widgets/domestic_trip_widget.dart';

import '../controllers/home_controller.dart';

import '../../splash/controllers/auth_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        title: const Text(
          'Tours',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
              onPressed: () => Get.toNamed("/booking-trip"),
              icon: const Icon(
                Icons.bookmark_outline_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () => AuthController.instance.logout(),
              icon: const Icon(
                Icons.login_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.grey.shade200,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                DomesticTripWidget(),
                SizedBox(
                  height: 20,
                ),
                AbroadTripWidget(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

import '../controllers/trip_details_controller.dart';
import 'widgets/carousel_slider_image.dart';

class TripDetailsView extends GetView<TripDetailsController> {
  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final dateFormat = DateFormat('dd/MM/yyyy');
    final timeFormat = DateFormat('kk:mm');
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: height,
        width: width,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Stack(
                    children: [
                      CarouselSliderImage(
                        imageList: controller.trip.value.imageList!,
                      ),
                      Positioned(
                          top: height / 20,
                          child: IconButton(
                              onPressed: () => Get.back(),
                              icon: const Icon(
                                Icons.arrow_back_outlined,
                                color: Colors.white,
                              )))
                    ],
                  ),
                  Positioned(
                      bottom: -5,
                      child: Container(
                        height: 40,
                        width: width,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.grey,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${dateFormat.format(controller.trip.value.startDate!)} - ${dateFormat.format(controller.trip.value.endDate!)}",
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        controller.trip.value.tripName.toString(),
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        controller.trip.value.tripAddress.toString(),
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        controller.trip.value.tripDetails.toString(),
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Program",
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Days 1 of ${controller.trip.value.program!.length}",
                            style: TextStyle(
                                color: Colors.blueAccent.shade700,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 300,
                        child: Column(
                          children: <Widget>[
                            Flexible(
                              child: PageView.builder(
                                controller: controller.pageController,
                                pageSnapping: false,
                                itemCount:
                                    controller.trip.value.program!.length,
                                itemBuilder: (BuildContext context, int index) {
                                  var program =
                                      controller.trip.value.program![index];
                                  return Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                              flex: 1,
                                              child: Text("Day ${index + 1}")),
                                          Expanded(
                                              flex: 2,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    Jiffy(DateTime.parse(program
                                                            .programDate!
                                                            .toString()))
                                                        .format(
                                                            "EEEE, d, MMMM"),
                                                    style: const TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                  Text(
                                                      "${timeFormat.format(program.programStartTime!)} - ${timeFormat.format(program.programEndTime!)}",
                                                      style: const TextStyle(
                                                          color: Colors.grey))
                                                ],
                                              )),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        program.programDetails.toString(),
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              if (index != 0) {
                                                controller.pageController
                                                    .previousPage(
                                                        duration: _kDuration,
                                                        curve: _kCurve);
                                              }
                                            },
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.arrow_back_ios_outlined,
                                                  color: index != 0
                                                      ? Colors.black
                                                      : Colors.grey,
                                                  size: 18,
                                                ),
                                                Text(
                                                  "Previous",
                                                  style: TextStyle(
                                                      color: index != 0
                                                          ? Colors.black
                                                          : Colors.grey,
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              if (index !=
                                                  controller.trip.value.program!
                                                          .length -
                                                      1) {
                                                controller.pageController
                                                    .nextPage(
                                                        duration: _kDuration,
                                                        curve: _kCurve);
                                              }
                                            },
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Next",
                                                  style: TextStyle(
                                                      color: index !=
                                                              controller
                                                                      .trip
                                                                      .value
                                                                      .program!
                                                                      .length -
                                                                  1
                                                          ? Colors.black
                                                          : Colors.grey,
                                                      fontSize: 16),
                                                ),
                                                Icon(
                                                    Icons
                                                        .arrow_forward_ios_outlined,
                                                    color: index !=
                                                            controller
                                                                    .trip
                                                                    .value
                                                                    .program!
                                                                    .length -
                                                                1
                                                        ? Colors.black
                                                        : Colors.grey,
                                                    size: 18),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () async {
                        },
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: Size(width, 58),
                            backgroundColor: Colors.red.shade900,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(6)),
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                        child: const Text("Book Now"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'widgets/program_day_widget.dart';
import 'widgets/carousel_slider_image.dart';

import '../controllers/trip_details_controller.dart';

class TripDetailsView extends GetView<TripDetailsController> {
  const TripDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final dateFormat = DateFormat('dd/MM/yyyy');
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
                      const ProgramDayWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () async {
                            if (controller.trip.value.isBooked == false) {
                              controller.updateTrip(true);
                            } else {
                              controller.updateTrip(false);
                            }
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              minimumSize: Size(width, 58),
                              backgroundColor: Colors.red.shade900,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              textStyle: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                          child: Obx(()=>Text(
                              controller.isBooking.value.toString() == "false"
                                  ? "Book Now"
                                  : "Cancel"),
                          )),
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

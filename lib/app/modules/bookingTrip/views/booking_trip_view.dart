import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../data/models/trip.dart';
import '../controllers/booking_trip_controller.dart';

class BookingTripView extends GetView<BookingTripController> {
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final dateFormat = DateFormat('dd/MM/yyyy');
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        title: const Text(
          'Booked Trip',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            )),
        centerTitle: false,
      ),
      body: Container(
        color: Colors.grey.shade200,
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Obx(()=>ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.bookedTripList.length,
                itemBuilder: (_, index) {
                  var trip =controller.bookedTripList[index];
                  print(controller.bookedTripList);
                  return SizedBox(
                    height: 120,
                    width: width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            trip.imageList![0]),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          trip.tripName.toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          trip.tripAddress.toString(),
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.calendar_today_outlined,
                                              color: Colors.grey,
                                              size: 16,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              dateFormat.format(trip.startDate!),
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey.shade600,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Text("Price:", style: const TextStyle(fontSize: 14, color: Colors.black),),
                                            RichText(
                                              text: TextSpan(
                                                  text: "BDT ${trip.price!}",
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.blueAccent),
                                                  children: [
                                                    TextSpan(
                                                      text: "/ ${trip.totalDays} days",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        color: Colors.grey.shade700,
                                                      ),
                                                    )
                                                  ]),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: InkWell(
                                        onTap: () => Get.toNamed("/trip-details",
                                            arguments: trip),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.deepOrangeAccent.shade200,
                                              borderRadius:
                                              BorderRadius.circular(50),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.deepOrangeAccent
                                                      .withOpacity(0.1),
                                                  spreadRadius: 5,
                                                  blurRadius: 12,
                                                  offset: const Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ]),
                                          child: const Icon(
                                            Icons.arrow_forward_outlined,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })),
          ),
        ),
      ),
    );
  }
}

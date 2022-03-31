import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

import '../../controllers/trip_details_controller.dart';

import '../../../../data/models/trip.dart';

class ProgramDayWidget extends StatefulWidget {
  const ProgramDayWidget({Key? key}) : super(key: key);

  @override
  _ProgramDayWidgetState createState() => _ProgramDayWidgetState();
}

class _ProgramDayWidgetState extends State<ProgramDayWidget> {
  final controller = Get.find<TripDetailsController>();
  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final timeFormat = DateFormat('kk:mm');
    return SizedBox(
      height: 500,
      child: Column(
        children: <Widget>[
          Flexible(
            child: PageView.builder(
              controller: controller.pageController,
              pageSnapping: false,
              itemCount: controller.trip.value.program!.length,
              itemBuilder: (BuildContext context, int index) {
                print(controller.trip.value.program![index].runtimeType);
                var program = Program.fromJson(controller.trip.value.program![index]);
                return Column(
                  children: [
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
                          "Days ${index + 1} of ${controller.trip.value.program!.length}",
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
                    Container(
                      height: 200,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(program.image.toString()),
                              fit: BoxFit.fill)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(flex: 1, child: Text("Day ${index + 1}")),
                        Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Jiffy(DateTime.parse(
                                          program.programDate!.toString()))
                                      .format("EEEE, d, MMMM"),
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                Text(
                                    "${timeFormat.format(program.programStartTime!)} - ${timeFormat.format(program.programEndTime!)}",
                                    style: const TextStyle(color: Colors.grey))
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            if (index != 0) {
                              controller.pageController.previousPage(
                                  duration: _kDuration, curve: _kCurve);
                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios_outlined,
                                color: index != 0 ? Colors.black : Colors.grey,
                                size: 18,
                              ),
                              Text(
                                "Previous",
                                style: TextStyle(
                                    color:
                                        index != 0 ? Colors.black : Colors.grey,
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
                                controller.trip.value.program!.length - 1) {
                              controller.pageController.nextPage(
                                  duration: _kDuration, curve: _kCurve);
                            }
                          },
                          child: Row(
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                    color: index !=
                                            controller.trip.value.program!
                                                    .length -
                                                1
                                        ? Colors.black
                                        : Colors.grey,
                                    fontSize: 16),
                              ),
                              Icon(Icons.arrow_forward_ios_outlined,
                                  color: index !=
                                          controller
                                                  .trip.value.program!.length -
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
    );
  }
}

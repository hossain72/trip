import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../controllers/home_controller.dart';

class DomesticTripWidget extends StatefulWidget {
  const DomesticTripWidget({Key? key}) : super(key: key);

  @override
  _DomesticTripWidgetState createState() => _DomesticTripWidgetState();
}

class _DomesticTripWidgetState extends State<DomesticTripWidget> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final dateFormat = DateFormat('dd/MM/yyyy');
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Abroad trips",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Text(
              "See All",
              style: TextStyle(color: Colors.blueAccent, fontSize: 16),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              itemCount: controller.abroadTrips.length,
              itemBuilder: (_, index) {
                var item = controller.abroadTrips[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: SizedBox(
                    width: width / 1.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                height: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            item.imageList!.first.toString()),
                                        fit: BoxFit.fill)),
                              ),
                              Positioned(
                                  bottom: -20,
                                  right: 10,
                                  child: Container(
                                    height: 45,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrangeAccent,
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.deepOrangeAccent
                                                .withOpacity(0.3),
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
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            item.tripName.toString(),
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            item.tripAddress.toString(),
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
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
                                    dateFormat.format(item.startDate!),
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                              RichText(
                                text: TextSpan(
                                    text: "BDT ${item.price!}",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.blueAccent),
                                    children: [
                                      TextSpan(
                                        text: "/ ${item.totalDays} days",
                                        style: TextStyle(
                                          fontSize: 16,
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
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}

import 'package:get/get.dart';

import '../../../data/models/trip.dart';

class HomeController extends GetxController {
  final domesticTrips = <Trip>[
    Trip(
        imageList: [
          'assets/images/jpg/cox_bazar.jpg',
          'assets/images/png/login.png',
          'assets/images/png/registration.png'
        ],
        tripName: "Cox's Bazar",
        tripAddress: "Cox's Bazar, Chittagong",
        totalDays: 6,
        startDate: DateTime.parse("2022-04-05T05:33:17.775Z"),
        endDate: DateTime.parse("2022-04-11T05:33:17.775Z"),
        price: 20000,
        tripDetails: "Coxs bazar beach is known for its serenity. "
            "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
            "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world.",
        program: [
          Program(
              programDay: "1",
              programDate: DateTime.parse("2022-04-06T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-06T05:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-06T10:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              programDate: DateTime.parse("2022-04-08T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-08T07:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-08T12:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              programDate: DateTime.parse("2022-04-10T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-10T06:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-10T11:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
        ]),
    Trip(
        imageList: [
          'assets/images/jpg/cox_bazar.jpg',
          'assets/images/png/login.png',
          'assets/images/png/registration.png'
        ],
        tripName: "Cox's Bazar",
        tripAddress: "Cox's Bazar, Chittagong",
        totalDays: 6,
        startDate: DateTime.parse("2022-04-05T05:33:17.775Z"),
        endDate: DateTime.parse("2022-04-11T05:33:17.775Z"),
        price: 20000,
        tripDetails: "Coxs bazar beach is known for its serenity. "
            "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
            "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world.",
        program: [
          Program(
              programDay: "1",
              programDate: DateTime.parse("2022-04-06T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-06T05:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-06T10:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              programDate: DateTime.parse("2022-04-08T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-08T07:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-08T12:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              programDate: DateTime.parse("2022-04-10T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-10T06:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-10T11:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
        ]),
  ];

  final abroadTrips = <Trip>[
    Trip(
        imageList: [
          'assets/images/jpg/cox_bazar.jpg',
          'assets/images/png/login.png',
          'assets/images/png/registration.png'
        ],
        tripName: "Cox's Bazar",
        tripAddress: "Cox's Bazar, Chittagong",
        totalDays: 6,
        startDate: DateTime.parse("2022-04-05T00:00:00.000Z"),
        endDate: DateTime.parse("2022-04-11T00:00:00.000Z"),
        price: 20000,
        tripDetails: "Coxs bazar beach is known for its serenity. "
            "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
            "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world.",
        program: [
          Program(
              programDay: "1",
              programDate: DateTime.parse("2022-04-06T00:00:00.000Z"),
              programStartTime: DateTime.parse("2022-04-06T09:00:00.000Z"),
              programEndTime: DateTime.parse("2022-04-06T14:00:00.000Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              programDate: DateTime.parse("2022-04-08T00:00:00.000Z"),
              programStartTime: DateTime.parse("2022-04-08T08:30:00.000Z"),
              programEndTime: DateTime.parse("2022-04-08T15:00:00.000Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              programDate: DateTime.parse("2022-04-10T00:00:00.000Z"),
              programStartTime: DateTime.parse("2022-04-10T10:00:00.000Z"),
              programEndTime: DateTime.parse("2022-04-10T13:00:00.000Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
        ]),
    Trip(
        imageList: [
          'assets/images/jpg/cox_bazar.jpg',
          'assets/images/png/login.png',
          'assets/images/png/registration.png'
        ],
        tripName: "Cox's Bazar",
        tripAddress: "Cox's Bazar, Chittagong",
        totalDays: 6,
        startDate: DateTime.parse("2022-04-05T00:00:00.000Z"),
        endDate: DateTime.parse("2022-04-11T00:00:00.000Z"),
        price: 20000,
        tripDetails: "Coxs bazar beach is known for its serenity. "
            "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
            "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world.",
        program: [
          Program(
              programDay: "1",
              programDate: DateTime.parse("2022-04-06T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-06T05:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-06T10:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              programDate: DateTime.parse("2022-04-08T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-08T07:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-08T12:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              programDate: DateTime.parse("2022-04-10T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-10T06:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-10T11:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
        ]),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../data/models/trip.dart';

class HomeController extends GetxController {
  /*late final domesticTrips = <Trip>[
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
        isBooked: false,
        program: [
          Program(
              programDay: "1",
              image: "assets/images/jpg/cox_bazar1.jpg",
              programDate: DateTime.parse("2022-04-06T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-06T05:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-06T10:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              image: "assets/images/jpg/cox_bazar2.jpg",
              programDate: DateTime.parse("2022-04-08T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-08T07:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-08T12:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              image: "assets/images/jpg/cox_bazar3.jpg",
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
        isBooked: false,
        program: [
          Program(
              programDay: "1",
              image: "assets/images/jpg/cox_bazar1.jpg",
              programDate: DateTime.parse("2022-04-06T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-06T05:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-06T10:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              image: "assets/images/jpg/cox_bazar2.jpg",
              programDate: DateTime.parse("2022-04-08T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-08T07:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-08T12:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              image: "assets/images/jpg/cox_bazar3.jpg",
              programDate: DateTime.parse("2022-04-10T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-10T06:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-10T11:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
        ]),
  ];*/

  late final domesticTrips = <Trip>[].obs;

  /*late final abroadTrips = <Trip>[
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
        isBooked: false,
        program: [
          Program(
              programDay: "1",
              image: "assets/images/jpg/cox_bazar1.jpg",
              programDate: DateTime.parse("2022-04-06T00:00:00.000Z"),
              programStartTime: DateTime.parse("2022-04-06T09:00:00.000Z"),
              programEndTime: DateTime.parse("2022-04-06T14:00:00.000Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              image: "assets/images/jpg/cox_bazar2.jpg",
              programDate: DateTime.parse("2022-04-08T00:00:00.000Z"),
              programStartTime: DateTime.parse("2022-04-08T08:30:00.000Z"),
              programEndTime: DateTime.parse("2022-04-08T15:00:00.000Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              image: "assets/images/jpg/cox_bazar3.jpg",
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
        isBooked: false,
        program: [
          Program(
              programDay: "1",
              image: "assets/images/jpg/cox_bazar1.jpg",
              programDate: DateTime.parse("2022-04-06T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-06T05:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-06T10:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              image: "assets/images/jpg/cox_bazar2.jpg",
              programDate: DateTime.parse("2022-04-08T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-08T07:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-08T12:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
          Program(
              programDay: "2",
              image: "assets/images/jpg/cox_bazar3.jpg",
              programDate: DateTime.parse("2022-04-10T05:33:17.775Z"),
              programStartTime: DateTime.parse("2022-04-10T06:33:17.775Z"),
              programEndTime: DateTime.parse("2022-04-10T11:33:17.775Z"),
              programDetails: "Coxs bazar beach is known for its serenity. "
                  "During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. "
                  "Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."),
        ]),
  ];*/
  late final abroadTrips = [].obs;
  late final bookedTripList = [].obs;

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  late CollectionReference abroadTripRef, bookedTripRef, domesticTripRef;

  @override
  void onInit() {
    super.onInit();
    abroadTripRef = firebaseFirestore.collection("abroad_trip");
    bookedTripRef = firebaseFirestore.collection("booked_trip");
    domesticTripRef = firebaseFirestore.collection("domestic_trip");
    //bookedTripList.value = localStorage.read("bookingTrip") ?? [];
    update();
    abroadTrips.bindStream(getAbroadTrips());
    domesticTrips.bindStream(getDomesticTrips());
    bookedTripList.bindStream(getBookedTrips());

    /*var id = domesticTripRef.doc().id;
    domesticTripRef.doc(id).set({
      "id":id,
      "imageList": [
        'https://upload.wikimedia.org/wikipedia/commons/2/21/Cox%27s_Bazar_Sunset.JPG',
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/e2/f8/43/longest-sea-beach-in.jpg?w=700&h=-1&s=1',
        'https://media.istockphoto.com/photos/multi-color-wooden-fishing-boat-on-the-shore-in-cox-bazar-sea-beach-picture-id1167217673?s=170667a'
      ],
      "tripName": "Cox's Bazar",
      "tripAddress": "Cox's Bazar, Chittagong",
      "totalDays": 6,
      "startDate": "2022-04-05T05:33:17.775Z",
      "endDate": "2022-04-11T05:33:17.775Z",
      "price": 20000,
      "tripDetails":
      "Coxs bazar beach is known for its serenity. During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. Mainly Cox's Bazar is famous for its longest natural sandy beach in the world.",
      "isBooked": false,
      "program": [
        {
          "programDay": "1",
          "image": "https://live.staticflickr.com/8326/8424251080_e8c961b3f9_b.jpg",
          "programDate": "2022-04-06T05:33:17.775Z",
          "programStartTime": "2022-04-06T05:33:17.775Z",
          "programEndTime": "2022-04-06T10:33:17.775Z",
          "programDetails":
          "Coxs bazar beach is known for its serenity. During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."
        },
        {
          "programDay": "2",
          "image": "https://images.unsplash.com/photo-1582650625119-3a31f8fa2699?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y294cyUyMGJhemFyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
          "programDate": "2022-04-08T05:33:17.775Z",
          "programStartTime": "2022-04-08T07:33:17.775Z",
          "programEndTime": "2022-04-08T12:33:17.775Z",
          "programDetails":
          "Coxs bazar beach is known for its serenity. During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."
        },
        {
          "programDay": "2",
          "image": "https://previews.123rf.com/images/waldorf27/waldorf271703/waldorf27170300194/73068415-cox-s-bazar-bangladesh-february-2017-people-on-the-longest-beach-in-the-world-in-cox-s-bazar-in-bang.jpg",
          "programDate": "2022-04-10T05:33:17.775Z",
          "programStartTime": "2022-04-10T06:33:17.775Z",
          "programEndTime": "2022-04-10T11:33:17.775Z",
          "programDetails":
          "Coxs bazar beach is known for its serenity. During the sunrise & the sunset, you can easily lost with nature.It is not only famous for its long natural sandy sea beach, but it is also famous for the amazing hospitality, fresh seafood, marine drive, kutubdia, Moheshkhali Island, and amazing St. Martin's Island. Mainly Cox's Bazar is famous for its longest natural sandy beach in the world."
        }
      ]
    });*/
  }

  Stream<List<Trip>> getAbroadTrips() => abroadTripRef
      .snapshots()
      .map((query) => query.docs.map((item) => Trip.fromMap(item)).toList());

  Stream<List<Trip>> getDomesticTrips() => domesticTripRef
      .snapshots()
      .map((query) => query.docs.map((item) => Trip.fromMap(item)).toList());

  Stream<List<Trip>> getBookedTrips() => bookedTripRef
      .snapshots()
      .map((query) => query.docs.map((item) => Trip.fromMap(item)).toList());
}

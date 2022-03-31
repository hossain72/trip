// To parse this JSON data, do
//
//     final trip = tripFromJson(jsonString);

import 'dart:convert';

Trip tripFromJson(String str) => Trip.fromJson(json.decode(str));

String tripToJson(Trip data) => json.encode(data.toJson());

class Trip {
  Trip({
    this.imageList,
    this.tripName,
    this.tripAddress,
    this.totalDays,
    this.startDate,
    this.endDate,
    this.price,
    this.tripDetails,
    this.isBooked,
    this.program,
  });

  List<String>? imageList;
  String? tripName;
  String? tripAddress;
  int? totalDays;
  DateTime? startDate;
  DateTime? endDate;
  int? price;
  String? tripDetails;
  bool? isBooked;
  List<Program>? program;

  factory Trip.fromJson(Map<String, dynamic> json) => Trip(
    imageList: List<String>.from(json["imageList"].map((x) => x)),
    tripName: json["tripName"],
    tripAddress: json["tripAddress"],
    totalDays: json["totalDays"],
    startDate: DateTime.parse(json["startDate"]),
    endDate: DateTime.parse(json["endDate"]),
    price: json["price"],
    tripDetails: json["tripDetails"],
    isBooked: json["isBooked"],
    program: List<Program>.from(json["program"].map((x) => Program.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "imageList": List<String>.from(imageList!.map((x) => x)),
    "tripName": tripName,
    "tripAddress": tripAddress,
    "totalDays": totalDays,
    "startDate": startDate!.toIso8601String(),
    "endDate": endDate!.toIso8601String(),
    "price": price,
    "tripDetails": tripDetails,
    "isBooked": isBooked,
    "program": List<dynamic>.from(program!.map((x) => x.toJson())),
  };
}

class Program {
  Program({
    this.programDay,
    this.image,
    this.programDate,
    this.programStartTime,
    this.programEndTime,
    this.programDetails,
  });

  String? programDay;
  String? image;
  DateTime? programDate;
  DateTime? programStartTime;
  DateTime? programEndTime;
  String? programDetails;

  factory Program.fromJson(Map<String, dynamic> json) => Program(
    programDay: json["programDay"],
    image: json["image"],
    programDate: DateTime.parse(json["programDate"]),
    programStartTime: DateTime.parse(json["programStartTime"]),
    programEndTime: DateTime.parse(json["programEndTime"]),
    programDetails: json["programDetails"],
  );

  Map<String, dynamic> toJson() => {
    "programDay": programDay,
    "image": image,
    "programDate": programDate!.toIso8601String(),
    "programStartTime": programStartTime!.toIso8601String(),
    "programEndTime": programEndTime!.toIso8601String(),
    "programDetails": programDetails,
  };
}

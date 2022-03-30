class Trip {
  List<String>? imageList;
  String? tripName;
  String? tripAddress;
  int? totalDays;
  DateTime? startDate;
  DateTime? endDate;
  int? price;
  String? tripDetails;
  List<Program>? program;

  Trip(
      {this.imageList,
      this.tripName,
      this.tripAddress,
      this.totalDays,
      this.startDate,
      this.endDate,
      this.price,
      this.tripDetails,
      this.program});
}

class Program {
  String? programDay;
  DateTime? programDate;
  DateTime? programStartTime;
  DateTime? programEndTime;
  String? programDetails;

  Program(
      {this.programDay,
      this.programDate,
      this.programStartTime,
      this.programEndTime,
      this.programDetails});
}

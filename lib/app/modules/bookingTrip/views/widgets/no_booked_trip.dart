import 'package:flutter/material.dart';

class NoBookedTrip extends StatelessWidget {
  const NoBookedTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("No Booked Trip", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/my_trips/presentation/view/trips_found.dart';
import 'package:musafeer_graduation_project/features/my_trips/presentation/view/trips_not_found.dart';

class MyTrips extends StatelessWidget {
   MyTrips({super.key});
bool found = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: found?  TripsFound(): TripsNotFound(),
    );
  }
}

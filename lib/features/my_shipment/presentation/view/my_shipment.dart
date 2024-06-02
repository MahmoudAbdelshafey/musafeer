import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/my_shipment/presentation/view/shipment_not_found.dart';

import 'shipment_found.dart';

class MyShipment extends StatelessWidget {
  MyShipment({super.key});
  bool found = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: found?  ShipmentFound(): ShipmentNotFound(),
    );
  }
}
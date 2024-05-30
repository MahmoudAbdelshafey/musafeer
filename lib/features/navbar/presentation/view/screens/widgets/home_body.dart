import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/navbar/presentation/view/screens/widgets/shipment_card.dart';
import 'package:musafeer_graduation_project/features/navbar/presentation/view/screens/widgets/trip_card.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_button.dart';
import 'package:musafeer_graduation_project/utils/textStyles.dart';

import '../../../../../../utils/mainWidgets/custom_smal_button.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(

        children: [
          TripCard(),
          SizedBox(height: 10,),
          ShipmentCard(),
          SizedBox(height: 10,),
          TripCard(),
          SizedBox(height: 10,),
          ShipmentCard(),
          SizedBox(height: 10,),
          TripCard(),
          SizedBox(height: 10,),
          ShipmentCard(),
          SizedBox(height: 10,),
          TripCard(),
          SizedBox(height: 10,), ShipmentCard(),
          SizedBox(height: 10,), TripCard(),
          SizedBox(height: MediaQuery.of(context).size.height*0.1,),



        ],
      ),
    );


      Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height *1,
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.11,),

        ],
      ),
    );
  }
}

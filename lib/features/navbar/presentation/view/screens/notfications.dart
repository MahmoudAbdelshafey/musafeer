import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/utils/constants.dart';

import '../../../../../utils/mainWidgets/browse_animation.dart';
import 'widgets/notification_card.dart';

class Notfications extends StatelessWidget {
  const Notfications({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          BrowseAnimation(title: 'Notfications',),
          SliverToBoxAdapter(
            child: Row(
              children: [
                SizedBox( width:  20,),
                Text('Recent', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Constants.kTextPrimaryColor),),
              ],
            ),

          ),
          NotificationCard(notText: 'Your Shipping Already Delivered',shipment: true,),
          NotificationCard(notText: 'Try The Latest Service From Tracky!',shipment: false,),
          NotificationCard(notText: 'Your Shipping Already Delivered',shipment: true,),
          NotificationCard(notText: 'Your Shipping Already Delivered',shipment: true,),
          NotificationCard(notText: 'Try The Latest Service From Tracky!',shipment: false,),
          NotificationCard(notText: 'Your Shipping Already Delivered',shipment: true,),
          NotificationCard(notText: 'Your Shipping Already Delivered',shipment: true,),
          NotificationCard(notText: 'Try The Latest Service From Tracky!',shipment: false,),
          NotificationCard(notText: 'Your Shipping Already Delivered',shipment: true,),
          SliverToBoxAdapter(
            child:
            SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
            ),
          )
        ],
      ),
    );
  }
}

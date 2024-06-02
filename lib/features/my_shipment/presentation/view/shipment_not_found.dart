import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/utils/constants.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/browse_animation.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_button.dart';
import 'package:musafeer_graduation_project/utils/textStyles.dart';

class ShipmentNotFound extends StatelessWidget {
  const ShipmentNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [

        BrowseAnimation(title: 'My Shipment',hasLeadingIcon: true,),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height*0.15,
          ),
        ),

        SliverToBoxAdapter(
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 260,
                height: 260,
                child: Image.asset('assets/images/notfound.png', width: 80,height: 80,),
              ),
            ],
          )
          ,
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height*0.1,
          ),
        ),

        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(

                      width: MediaQuery.of(context).size.width*0.8,
                      child: Text('You have no Shipment in the recent time',
                        textAlign: TextAlign.center,
                        style: FontStyles.descriptionTextStyle.copyWith(color: Colors.grey, fontSize: 18),)),

                ],
              ),
            ],
          ),

        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height*0.1,
          ),
        ),
        SliverToBoxAdapter(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(btnTitle: 'Add Shipment', btnFun: (){}),
          ],
        ))
      ],

    );
  }
}
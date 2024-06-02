import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/utils/constants.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/browse_animation.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_button.dart';
import 'package:musafeer_graduation_project/utils/textStyles.dart';

class TripsNotFound extends StatelessWidget {
  const TripsNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [

        BrowseAnimation(title: 'MyTrips',hasLeadingIcon: true,),
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
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Image.asset('assets/images/myTrips.png', width: 80,height: 80,),
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
                  Text('You Have No History  Yet', style: FontStyles.cardHead1.copyWith(fontSize:24 ),),
                  Container(

                      width: MediaQuery.of(context).size.width*0.8,
                      child: Text('When tracking history appear, you will see them here',
                        textAlign: TextAlign.center,
                        style: FontStyles.descriptionTextStyle.copyWith(color: Colors.grey, fontSize: 18),)),

                ],
              ),
            ],
          ),

        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height*0.15,
          ),
        ),
        SliverToBoxAdapter(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(btnTitle: 'Add Trip', btnFun: (){}),
          ],
        ))
      ],

    );
  }
}

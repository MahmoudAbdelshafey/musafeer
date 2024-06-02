import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/my_trips/presentation/view/widgets/custom_trip_widget.dart';
import 'package:musafeer_graduation_project/utils/constants.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/browse_animation.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_button.dart';
import 'package:musafeer_graduation_project/utils/textStyles.dart';

class TripsFound extends StatelessWidget {
  const TripsFound({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
        slivers: [

          BrowseAnimation(title: 'MyTrips',hasLeadingIcon: true,),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTripWidget(),
              ],
            ),
          )
        ],

    );
  }
}

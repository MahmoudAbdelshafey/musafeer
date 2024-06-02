import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/add_trip_or_shipment/presentation/view/widgets/city_drop_down.dart';
import 'package:musafeer_graduation_project/features/add_trip_or_shipment/presentation/view/widgets/drop_down_list.dart';
import 'package:musafeer_graduation_project/features/add_trip_or_shipment/presentation/view/widgets/time.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/browse_animation.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_button.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_rounded_text_form_field.dart';
import 'package:musafeer_graduation_project/utils/textStyles.dart';

class AddTrip extends StatelessWidget {
   AddTrip({super.key});
TextEditingController kg = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          BrowseAnimation(title: 'AddTrip', hasLeadingIcon: true,),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text('From:', style: FontStyles.cardHead1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CDropdownMenuExample(),
                      DropdownMenuExample(),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('To:', style: FontStyles.cardHead1,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CDropdownMenuExample(),
                      DropdownMenuExample(),

                    ],
                  ),
                  SizedBox(height: 20,),

                  Text('Arrival Date::', style: FontStyles.cardHead1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      DatePickerExample(),
                    ],
                  ),
                  SizedBox(height: 20,),


                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Available Kg:', style: FontStyles.cardHead1,),
            ),
          ),
          CustomRoundedTextFormField(title: 'KG', controller: kg),
          SliverToBoxAdapter(
            child: SizedBox(height: 200,),
          ),

          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(btnFun: (){},btnTitle: 'Continue',),
              ],
            ),
          )

        ],
      ),
    );
  }

}

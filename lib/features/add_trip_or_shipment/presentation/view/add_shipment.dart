import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/add_trip_or_shipment/presentation/view/widgets/city_drop_down.dart';
import 'package:musafeer_graduation_project/features/add_trip_or_shipment/presentation/view/widgets/drop_down_list.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/browse_animation.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_button.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_rounded_text_form_field.dart';
import 'package:musafeer_graduation_project/utils/textStyles.dart';

import 'widgets/category_drop_down.dart';

class AddShipment extends StatelessWidget {
   AddShipment({super.key});
TextEditingController add1 = TextEditingController();
TextEditingController add2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          BrowseAnimation(title: 'Add Shipment', hasLeadingIcon: true,),
          SliverToBoxAdapter(child: SizedBox(height: 50,),),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('Category', style: FontStyles.cardHead1,),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: CategoryDropDown(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20,),),

          SliverToBoxAdapter(
            child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                ],
              ),
            ),
          ),
          CustomRoundedTextFormField(title: 'Address', controller: add1),
          SliverToBoxAdapter(
            child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('To:', style: FontStyles.cardHead1,),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CDropdownMenuExample(),
                      DropdownMenuExample(),

                    ],
                  ),
                ],
              ),
            ),
          ),
          CustomRoundedTextFormField(title: 'Address', controller: add2),
          SliverToBoxAdapter(child: SizedBox(height: 120,),),

          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(btnTitle: 'Create Shipment', btnFun: (){})
              ],
            ),
          )
        ],
      ),
    );
  }
}

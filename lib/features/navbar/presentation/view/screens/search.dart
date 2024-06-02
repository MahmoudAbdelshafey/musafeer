import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import 'package:musafeer_graduation_project/features/navbar/presentation/view/screens/widgets/search_select_container.dart';
import 'package:musafeer_graduation_project/utils/constants.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_button.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_textformfield.dart';
import 'package:musafeer_graduation_project/utils/textStyles.dart';

import '../../../../../utils/mainWidgets/browse_animation.dart';
import '../../../../../utils/mainWidgets/custom_rounded_text_form_field.dart';

class Search extends StatefulWidget {
   Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
TextEditingController country = TextEditingController();

TextEditingController toCountry = TextEditingController();
bool trip = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(

        slivers: [
          BrowseAnimation(title: 'Select',),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Let us help you find what you are looking for'),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 40,),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                GestureDetector(
                    onTap: (){
                      trip = true;
                      setState(() {

                      });
                    },
                    child: SearchSelectContainer(title: 'Trip',imagePath: 'assets/images/roadTrip.png',selected: trip,)),
                GestureDetector(
                    onTap: (){
                      trip = false;

                      setState(() {

                      });
                    },
                    child: SearchSelectContainer(title: 'Shipment',imagePath: 'assets/images/shipmentSelected.png',selected: !trip,)),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 40,),
          ),

          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text('From:', style: FontStyles.cardHead1,),
          ),),
          CustomRoundedTextFormField(title: 'Enter Country', controller: country)
         , SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text('To:', style: FontStyles.cardHead1,),
          ),),
          CustomRoundedTextFormField(title: 'Enter Country', controller: country),
          SliverToBoxAdapter(
            child: SizedBox(height: 50,),
          ),


          SliverToBoxAdapter(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(btnTitle: 'Search', btnFun: (){



              }),
            ],
          ))

        ],
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/browse_animation.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_button.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_textformfield.dart';

import '../../../../utils/mainWidgets/custom_rounded_text_form_field.dart';
import '../../../../utils/textStyles.dart';

class EditProfile extends StatelessWidget {
   EditProfile({super.key});
TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController pass = TextEditingController();
TextEditingController confirm = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          BrowseAnimation(title: 'Edit Profile', hasLeadingIcon: true,),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                CircleAvatar(

                  child: Image.asset('assets/images/ahmed.png', fit: BoxFit.fill,height: 100,width: 100,),
                  radius: 40,
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 60,
            ),
          ),
          CustomRoundedTextFormField(title: 'Name', controller: name),
          CustomRoundedTextFormField(title: 'Email', controller: name),
          CustomRoundedTextFormField(title: 'Old Password', controller: name),
          CustomRoundedTextFormField(title: 'New Password', controller: name),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(btnTitle: 'Save', btnFun: (){})
              ],
            ),
          )
        ],
      ),
    );
  }
}

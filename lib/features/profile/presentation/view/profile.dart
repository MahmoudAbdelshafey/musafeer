import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/auth/presentation/view/login.dart';
import 'package:musafeer_graduation_project/features/profile/presentation/view/edit_profile.dart';
import 'package:musafeer_graduation_project/features/profile/presentation/view/widgets/custom_row_profile.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/browse_animation.dart';
import 'package:musafeer_graduation_project/utils/textStyles.dart';

import '../../../../utils/constants.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          BrowseAnimation(title: 'Profile',hasLeadingIcon: true,),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 60,
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
                Text('Ahmed Ali', style: FontStyles.cardHead1,)
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 60,
            ),
          ),

          CustomRowProfile(title: 'Edit Profile',btnFun: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
          },),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),

          CustomRowProfile(title: 'About',btnFun: (){},),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.3,
            ),
          ),

          CustomRowProfile(title: 'Sign Out',btnFun: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginFeature(),));
          },logOut: true,),
        ],
      ),
    );
  }
}

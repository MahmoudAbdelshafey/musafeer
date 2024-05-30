import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:musafeer_graduation_project/features/auth/presentation/view/signup.dart';
import 'package:musafeer_graduation_project/features/auth/presentation/view/widgets/Resend.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/mainWidgets/custom_button.dart';
import '../../../../utils/mainWidgets/custom_textformfield.dart';
import '../../../../utils/textStyles.dart';
import 'new_password.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                SizedBox(width: 20,),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon:  Icon(Icons.arrow_back_ios)),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
            ),
          ),

          SliverPadding(
            padding: EdgeInsets.only(left: 30),
            sliver: SliverToBoxAdapter(
              child: Text('Enter OTP',style: FontStyles.headline1,),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 30),
            sliver: SliverToBoxAdapter(
              child: Text('To recent password, please enter the 4 digit pin sent to your mail.',style: FontStyles.hintText,),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.03,
            ),
          ),

        SliverToBoxAdapter(
          child: OtpTextField(
            numberOfFields: 4,
            borderColor: Color(0xFF512DA8),
            showFieldAsBox: false,
            fieldWidth: 60,
            disabledBorderColor: Colors.grey,
            enabledBorderColor: Colors.grey,
            focusedBorderColor: Constants.kPrimaryColor,
            //runs when a code is typed in
            onCodeChanged: (String code) {
            },
            onSubmit: (String verificationCode){

            }, // end onSubmit
          ),
        ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
            ),
          ),


          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: CustomButton(btnTitle: 'Continue', btnFun: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewPassword(),));
              }),
            ),
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.37,
            ),
          ),

          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn’t get the code?', style: TextStyle(
                    color: Colors.grey
                ),),
                ResendButtonWithTimer(),

              ],
            ),
          ),

        ],
      ),
    );  }
}

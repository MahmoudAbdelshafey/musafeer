import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/auth/presentation/view/signup.dart';
import 'package:musafeer_graduation_project/features/landing/presentation/view/landing.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/mainWidgets/custom_button.dart';
import '../../../../utils/mainWidgets/custom_textformfield.dart';
import '../../../../utils/textStyles.dart';
import 'otp.dart';

class NewPassword extends StatelessWidget {
   NewPassword({super.key});
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key: _formKey,
        child: CustomScrollView(
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
                child: Text('New Password',style: FontStyles.headline1,),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
            ),

            CustomTextformfield(title: 'New Password',controller: password,),
            CustomTextformfield(title: 'Re-enter Password',controller: confirmPassword,),

            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.1,
              ),
            ),


            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomButton(btnTitle: 'SignIn', btnFun: (){
                  if(_formKey.currentState!.validate()){

                  Navigator.of(context).popUntil((predicate) => predicate.isFirst);
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LandingFeature()),
                  );
                  }
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
                  Text('Don’t have an account? ', style: TextStyle(
                      color: Colors.grey
                  ),),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signup(),));
                    },
                    child: Text('SignUp', style: TextStyle(color: Constants.kPrimaryColor),),
                  )

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/auth/presentation/view/otp.dart';
import 'package:musafeer_graduation_project/features/auth/presentation/view/signup.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/mainWidgets/custom_button.dart';
import '../../../../utils/mainWidgets/custom_textformfield.dart';
import '../../../../utils/textStyles.dart';

class ForgetPassword extends StatelessWidget {
   ForgetPassword({super.key});
  TextEditingController email = TextEditingController();
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
                child: Text('Forget Password',style: FontStyles.headline1,),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
            ),

            CustomTextformfield(title: 'Email Address',controller: email,),

            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.1,
              ),
            ),


            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomButton(btnTitle: 'Continue', btnFun: (){
                  if(_formKey.currentState!.validate()){

                  Navigator.push(context, MaterialPageRoute(builder: (context) => Otp(),));
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

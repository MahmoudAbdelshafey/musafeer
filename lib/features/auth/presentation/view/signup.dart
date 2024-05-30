import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/auth/presentation/view/login.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/mainWidgets/custom_button.dart';
import '../../../../utils/mainWidgets/custom_textformfield.dart';
import '../../../../utils/textStyles.dart';
import '../../../landing/presentation/view/landing.dart';

class Signup extends StatelessWidget {
   Signup({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword  = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key:_formKey ,
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
                height: MediaQuery.of(context).size.height*0.05,
              ),
            ),

            SliverPadding(
              padding: EdgeInsets.only(left: 30),
              sliver: SliverToBoxAdapter(
                child: Text('Sign Up',style: FontStyles.headline1,),
              ),
            ),
            CustomTextformfield(title: 'Your Name',controller: name,),
            CustomTextformfield(title: 'Email Address',controller: email,),
            CustomTextformfield(title: 'Phone Number',controller: number,),
            CustomTextformfield(title: 'Password',isPassword: true,controller: password,),
            CustomTextformfield(title: 'Confirm Password',isPassword: true,controller: confirmPassword,),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomButton(btnTitle: 'SignUp', btnFun: (){
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
                height: 30,
              ),
            ),

            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? ', style: TextStyle(
                      color: Colors.grey
                  ),),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginFeature(),));
                    },
                    child: Text('Sign In', style: TextStyle(color: Constants.kPrimaryColor),),
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

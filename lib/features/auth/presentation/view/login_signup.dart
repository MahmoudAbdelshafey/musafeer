import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/auth/presentation/view/login.dart';
import 'package:musafeer_graduation_project/features/auth/presentation/view/signup.dart';
import 'package:musafeer_graduation_project/utils/textStyles.dart';

import '../../../../utils/mainWidgets/custom_button.dart';
import 'widgets/sign_with_gmail_btn.dart';

class Login_SignUp extends StatelessWidget {
  const Login_SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: Column(
  children: [
    SizedBox(height: MediaQuery.of(context).size.height*0.05,),
    Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.4,
      child: Image.asset('assets/images/airplane.png', fit: BoxFit.cover,) ,
    ),
    Container(
      width: MediaQuery.of(context).size.width*0.8,
      child: Text('Is shipping items long distance hard?  Is it hard to find trustworthy individuals? Musafeer make it easy',textAlign: TextAlign.center,style: FontStyles.descriptionTextStyle,) ,
    ),
    SizedBox(height: 40,),

    CustomButton(btnTitle: 'Login',btnFun: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginFeature(),));
    },),
    SizedBox(height: 20,),
    CustomButton(btnTitle: 'Sign Up', outline: true,btnFun: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));

    },),
Spacer(),
Text('Or', style: FontStyles.descriptionTextStyle,),
    SizedBox(height: 10,),

    SignWithGmailBtn(),
    SizedBox(height: 40,)
  ],
),
    );
  }
}

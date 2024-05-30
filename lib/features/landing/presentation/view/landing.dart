import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/auth/presentation/view/login_signup.dart';

class LandingFeature extends StatelessWidget {
  const LandingFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Login_SignUp(),));
      }, child: Text('back')),
    );
  }
}

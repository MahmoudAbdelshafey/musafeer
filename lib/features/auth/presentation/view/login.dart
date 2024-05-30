import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/features/auth/presentation/view/forget_password.dart';
import 'package:musafeer_graduation_project/features/auth/presentation/view/signup.dart';
import 'package:musafeer_graduation_project/utils/constants.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_button.dart';
import 'package:musafeer_graduation_project/utils/textStyles.dart';

import '../../../../utils/mainWidgets/custom_textformfield.dart';
import '../../../navbar/presentation/view/nav_bar_widget.dart';

class LoginFeature extends StatelessWidget {
   LoginFeature({super.key});
TextEditingController email = TextEditingController();
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
                child: Text('Log in',style: FontStyles.headline1,),
              ),
            ),
            CustomTextformfield(title: 'Email Address',controller: email,),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),

            CustomTextformfield(title: 'Password',isPassword: true,controller: password,),
            SliverToBoxAdapter(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword(),));
                    },
                    child: Text('Forget Password', style: TextStyle(color: Constants.kPrimaryColor),),
                  )
                ],
              ),
            )),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomButton(btnTitle: 'Login', btnFun: (){
                  if(_formKey.currentState!.validate()){

                  Navigator.of(context).popUntil((predicate) => predicate.isFirst);
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MyHomePages()),
                );
                  }

                }),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.26,
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

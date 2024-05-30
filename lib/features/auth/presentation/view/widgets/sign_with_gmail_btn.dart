import 'package:flutter/material.dart';

import '../../../../../utils/textStyles.dart';

class SignWithGmailBtn extends StatelessWidget {
  const SignWithGmailBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 12),
      width: MediaQuery.of(context).size.width *0.8,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(55),
          border: Border.all(color: Colors.red, width: 2)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Container(
            width: 50,
            height: 30,
            child:  Image.asset('assets/images/google.png', fit: BoxFit.fill,),
          ),
          SizedBox(width: 10,),
          Text('Sign in with Google', style: FontStyles.buttonTextStyle,)
        ],
      ),
    );
  }
}

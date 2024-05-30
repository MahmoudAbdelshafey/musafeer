import 'package:flutter/material.dart';

import '../constants.dart';
import '../textStyles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.btnTitle , this.outline = false, required this.btnFun});
final String btnTitle;
final bool outline;
final VoidCallback btnFun;
  @override
  Widget build(BuildContext context) {
    return     GestureDetector(

      onTap: btnFun,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12),
        width: MediaQuery.of(context).size.width *0.8,
        decoration: BoxDecoration(
          color: outline? Colors.transparent  : Constants.kPrimaryColor,
          borderRadius: BorderRadius.circular(55),
          border: Border.all(color: Constants.kPrimaryColor, width: 2)
        ),
        child: Text(btnTitle, style: outline? FontStyles.buttonTextStyle.copyWith(
          color: Constants.kPrimaryColor
        ) :  FontStyles.buttonTextStyle,),
      ),
    )
    ;
  }
}

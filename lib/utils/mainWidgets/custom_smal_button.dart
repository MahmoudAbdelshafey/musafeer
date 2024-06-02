
import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/utils/constants.dart';
import 'package:musafeer_graduation_project/utils/textStyles.dart';

class CustomSmalButton extends StatelessWidget {
  const CustomSmalButton({super.key, required this.btnTitle, required this.btnFun, this.delete = false});
final String btnTitle;
final VoidCallback btnFun;
final bool delete;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: btnFun,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: delete? Colors.red.withOpacity(0.35) : Constants.kTextPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(btnTitle, style: FontStyles.btnSmall.copyWith(
          color: delete? Colors.red : Colors.white,
           fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}

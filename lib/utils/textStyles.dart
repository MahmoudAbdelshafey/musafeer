import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/utils/constants.dart';

abstract class FontStyles{


  static const TextStyle descriptionTextStyle = TextStyle(
    color: Constants.kTextPrimaryColor,
    fontSize: 16,
    fontWeight: FontWeight.bold
  );

  static const TextStyle buttonTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold
  );

  static const TextStyle headline1 = TextStyle(
    color: Constants.kTextPrimaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 35
  );
  static const TextStyle hintText = TextStyle(
      color: Colors.grey,
      fontSize: 16
  );
//cards TextStyles
  static const TextStyle cardHead1 = TextStyle(
      color: Constants.kTextPrimaryColor,
      fontSize: 18,
    fontWeight: FontWeight.bold

  );
  static const TextStyle btnSmall = TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.bold

  );
  static const TextStyle cardHead2 = TextStyle(
      color: Constants.kTextPrimaryColor,
      fontSize: 12,
      fontWeight: FontWeight.bold

  );


  static const TextStyle cardHead3 = TextStyle(
      color: Constants.kTextPrimaryColor,
      fontSize: 15,
      fontWeight: FontWeight.bold

  );

}
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomRoundedTextFormField extends StatefulWidget {
  const CustomRoundedTextFormField({super.key, required this.title , required this.controller, this.isPassword = false});
  final String title;
  final bool isPassword;
  final TextEditingController controller;

  @override
  State<CustomRoundedTextFormField> createState() => _CustomRoundedTextFormFieldState();
}

class _CustomRoundedTextFormFieldState extends State<CustomRoundedTextFormField> {
  @override
  Widget build(BuildContext context) {
    bool correct = false;
    return  SliverToBoxAdapter(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        child: TextFormField(
          validator: (value) {
            if (value!.trim().isEmpty || value == '') {
              return 'Value Must Not Be Empty';
            }else{

              correct = true;
              setState(() {

              });
            }
          },
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          cursorColor: Constants.kPrimaryColor,
          obscureText: widget.isPassword,
          decoration:  InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),

                  borderSide: BorderSide(color: Constants.kPrimaryColor)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),

                  borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),

                  borderSide: BorderSide(color: Constants.kPrimaryColor)),
              suffixIcon: Visibility(
                visible: correct,
                child: Icon(
                  Icons.check_circle,
                  color: Constants.kPrimaryColor,
                  size: 20,
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),

                  borderSide: BorderSide(color: Constants.kPrimaryColor)),
              labelText: widget.title,
              floatingLabelStyle: TextStyle(color: Constants.kPrimaryColor),
              labelStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500
              )
          ),
          controller:  widget.controller,
          onFieldSubmitted: (value) {
            correct = true;
          },
          onChanged: (value){
            correct = true;
          },
        ),
      ),
    );
  }}

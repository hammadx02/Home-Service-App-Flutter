// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:internship_tasks/utils/colors.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  //  final IconData prefixIcon;
  final TextInputType keyboardType;
  final bool isPass;

  const MyTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    this.isPass = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        // prefixIcon: Icon(prefixIcon),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 15,
          fontFamily: 'Urbanist Medium',
          color: myGreyColor,
        ),
        fillColor: const Color(0XFFF7F8F9),
        filled: true,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0XFFE8ECF4),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

//password text form field
class passTextField extends StatelessWidget {
  passTextField({
    super.key,
  });
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      decoration: InputDecoration(
        suffixIcon: Image.asset(
          'images/eye.png',
          scale: 2.8,
        ),
        hintText: 'Enter your password',
        hintStyle: const TextStyle(
          fontSize: 15,
          fontFamily: 'Urbanist Medium',
          color: myGreyColor,
        ),
        fillColor: const Color(0xffF7F8F9),
        filled: true,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0XFFE8ECF4),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

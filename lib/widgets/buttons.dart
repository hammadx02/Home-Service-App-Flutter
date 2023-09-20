// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:internship_tasks/utils/colors.dart';

class MyButton extends StatelessWidget {
  String title;
  final VoidCallback onTap;
  Color bgColor, textColor;
  MyButton({
    super.key,
    required this.title,
    required this.bgColor,
    required this.textColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: ShapeDecoration(
          color: bgColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: myBlackColor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Urbanist SemiBold',
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}

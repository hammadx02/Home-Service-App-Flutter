import 'package:flutter/material.dart';
import 'package:internship_tasks/utils/colors.dart';

class MyIconButton extends StatelessWidget {
  final String image;
  final double hight, width;
  const MyIconButton({
    super.key,
    required this.image,required this.hight,required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 56,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: myBorderColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Center(
        child: Image(
          image: AssetImage(
            image,
          ),
          height: hight,
          width: width,
        ),
      ),
    );
  }
}

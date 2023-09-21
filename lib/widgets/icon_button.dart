import 'package:flutter/material.dart';
import 'package:internship_tasks/utils/colors.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    super.key,
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
      child: const Center(
        child: ImageIcon(
          AssetImage(
            'images/back.png',
          ),
          size: 16,
        ),
      ),
    );
  }
}

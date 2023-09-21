import 'package:flutter/material.dart';
import 'package:internship_tasks/utils/colors.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 41,
        height: 41,
        decoration: ShapeDecoration(
          color: myBorderColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: myBorderColor,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Center(
          child: ImageIcon(
            AssetImage(
              'images/back.png',
            ),
            size: 4,
          ),
        ),
      ),
    );
  }
}

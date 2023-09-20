import 'package:flutter/material.dart';
import 'package:internship_tasks/utils/colors.dart';
import 'package:internship_tasks/widgets/buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage(
              'images/bg_image.png',
            ),
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
              ),
              const Center(
                child: Image(
                  image: AssetImage(
                    'images/branding.png',
                  ),
                  height: 99,
                  width: 141,
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              MyButton(
                title: 'Login',
                bgColor: myBlackColor,
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(
                title: 'Register',
                bgColor: Colors.white,
                textColor: Colors.black,
              ),
              const SizedBox(
                height: 46,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_tasks/screens/login_screen.dart';
import 'package:internship_tasks/screens/register_screen.dart';
import 'package:internship_tasks/utils/colors.dart';
import 'package:internship_tasks/widgets/buttons.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final isPortrait = orientation == Orientation.portrait;
    final double paddingFraction = isPortrait ? 0.1 : 0.2;
    final double fontSizeFraction = isPortrait ? 0.03 : 0.04;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Image(
            image: AssetImage(
              'images/bg_image.png',
            ),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * paddingFraction,
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(
                    height: 448,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    title: 'Login',
                    bgColor: myBlackColor,
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MyButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    title: 'Register',
                    bgColor: Colors.white,
                    textColor: Colors.black,
                  ),
                  const SizedBox(
                    height: 46,
                  ),
                  Center(
                    child: Text(
                      'Continue as a guest',
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          color: myPrimaryColor,
                          decoration: TextDecoration.underline,
                          fontSize: MediaQuery.of(context).size.width *
                              fontSizeFraction,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

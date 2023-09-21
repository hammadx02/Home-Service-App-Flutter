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
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Image(
              image: AssetImage(
                'images/bg_image.png',
              ),
              height: double.infinity,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                        textStyle: const TextStyle(
                          color: myPrimaryColor,
                          decoration: TextDecoration.underline,
                          fontSize: 15,
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
          ],
        ),
      ),
    );
  }
}

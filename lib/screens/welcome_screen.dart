import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_tasks/screens/home_screen.dart';
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
    // ignore: unused_local_variable
    final double fontSizeFraction = isPortrait ? 0.03 : 0.04;

    return Scaffold(
      backgroundColor: Colors.white,
      body: FractionallySizedBox(
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
                height: 250,
              ),
              const Center(
                child: Image(
                  image: AssetImage(
                    'images/branding.jpg',
                  ),
                  height: 200,
                  width: 141,
                ),
              ),
              const SizedBox(
                height: 30,
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
                height: 180,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    child: Center(
                      child: Text(
                        'Continue as a Guest',
                        style: GoogleFonts.urbanist(
                          textStyle: const TextStyle(
                            color: myPrimaryColor,
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

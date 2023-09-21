import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_tasks/screens/login_screen.dart';

import '../utils/colors.dart';
import '../widgets/back_button.dart';
import '../widgets/buttons.dart';
import '../widgets/icon_button.dart';
import '../widgets/text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  children: [
                    MyBackButton(),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                Text(
                  'Hello! Register to get\nstarted',
                  style: GoogleFonts.urbanist(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                MyTextFormField(
                  hintText: 'Username',
                  controller: usernameController,
                  keyboardType: TextInputType.none,
                ),
                const SizedBox(
                  height: 12,
                ),
                MyTextFormField(
                  hintText: 'Email',
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 12,
                ),
                MyTextFormField(
                  hintText: 'Password',
                  controller: passwordController,
                  keyboardType: TextInputType.none,
                ),
                const SizedBox(
                  height: 12,
                ),
                MyTextFormField(
                  hintText: 'Confirm password',
                  controller: confirmPasswordController,
                  keyboardType: TextInputType.none,
                ),
                const SizedBox(
                  height: 30,
                ),
                MyButton(
                  onTap: () {},
                  title: 'Register',
                  bgColor: myBlackColor,
                  textColor: Colors.white,
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Divider(
                        color: myBorderColor,
                        thickness: 1,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Or Register with',
                      style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: myDarkGreyColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Expanded(
                      child: Divider(
                        color: myBorderColor,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyIconButton(
                      image: 'images/fb.png',
                      hight: 24,
                      width: 12,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    MyIconButton(
                      image: 'images/google.png',
                      hight: 26,
                      width: 26,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    MyIconButton(
                      image: 'images/apple.png',
                      hight: 26,
                      width: 21,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 54,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                          color: myBlackColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Login Now',
                        style: GoogleFonts.urbanist(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

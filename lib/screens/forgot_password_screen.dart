import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_tasks/screens/register_screen.dart';
import 'package:internship_tasks/utils/colors.dart';
import 'package:internship_tasks/utils/utils.dart';
import '../widgets/buttons.dart';
import '../widgets/text_form_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController emailController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool loading = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final isPortrait = orientation == Orientation.portrait;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isPortrait ? 22.0 : 44.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 85.0,
                    ),
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          fontSize: isPortrait ? 30 : 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Don\'t worry! It occurs. Please enter the email\naddress linked with your account.',
                    style: GoogleFonts.urbanist(
                      textStyle: TextStyle(
                        fontSize: isPortrait ? 16 : 20,
                        color: myGreyColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  MyTextFormField(
                    hintText: 'Enter your email',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  MyButton(
                    loading: loading,
                    onTap: () {
                      setState(
                        () {
                          loading = true;
                        },
                      );
                      _auth
                          .sendPasswordResetEmail(
                        email: emailController.text.toString(),
                      )
                          .then(
                        (value) {
                          setState(
                            () {
                              loading = false;
                            },
                          );
                          Utils().toastMessage(
                            'We have sent you email to recover password, please check your email',
                          );
                        },
                      ).onError(
                        (error, stackTrace) {
                          setState(
                            () {
                              loading = false;
                            },
                          );
                          Utils().toastMessage(
                            error.toString(),
                          );
                        },
                      );
                    },
                    title: 'Send Code',
                    bgColor: myBlackColor,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Remember Password?',
                    style: GoogleFonts.urbanist(
                      textStyle: TextStyle(
                        color: myBlackColor,
                        fontSize: isPortrait ? 15 : 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          fontSize: isPortrait ? 15 : 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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

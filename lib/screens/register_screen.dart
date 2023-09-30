import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_tasks/screens/login_screen.dart';
import '../utils/colors.dart';
import '../utils/utils.dart';
import '../widgets/buttons.dart';
import '../widgets/icon_button.dart';
import '../widgets/text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool loading = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    super.dispose();

    emailController.dispose();
    passwordController.dispose();
  }

  void signupUser() {
    _auth
        .createUserWithEmailAndPassword(
          email: emailController.text.toString(),
          password: passwordController.text.toString(),
        )
        .then(
          (value) {},
        )
        .onError(
      (error, stackTrace) {
        Utils().toastMessage(
          error.toString(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 85.0,
                    ),
                    child: Text(
                      'Hello! Register to get\nstarted',
                      style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
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
                    height: 30,
                  ),
                  MyButton(
                    onTap: () {
                      signupUser();
                    },
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
                ],
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

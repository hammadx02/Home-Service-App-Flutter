import 'package:flutter/material.dart';
import 'package:internship_tasks/utils/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 28,
              ),
              const Text(
                'Welcome back! Glad\nto see you, Again!',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Urbanist Bold',
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
                height: 15,
              ),
              passTextField(),
              const SizedBox(
                height: 15,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: myDarkGreyColor,
                      fontSize: 14,
                      fontFamily: 'Urbanist SemiBold',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                onTap: () {},
                title: 'Login',
                bgColor: myBlackColor,
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

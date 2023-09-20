import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/buttons.dart';
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
                'Hello! Register to get\nstarted',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Urbanist Bold',
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
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

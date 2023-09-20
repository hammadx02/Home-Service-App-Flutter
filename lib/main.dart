import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship_tasks/colors/material_color.dart';
import 'package:internship_tasks/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: myMaterialColor(
          const Color(0xff35C2C1),
        ),
        dividerColor: myMaterialColor(
          const Color(0XFFE8ECF4),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}

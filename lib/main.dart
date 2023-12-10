import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship_tasks/colors/material_color.dart';
import 'package:internship_tasks/provider/auth_provider.dart';
import 'package:internship_tasks/provider/visibility_provider.dart';
import 'package:internship_tasks/screens/welcome_screen.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => IconVisibilityProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
          return MaterialApp(
            // debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: myMaterialColor(
                const Color(0XFF152238),
              ),
              dividerColor: myMaterialColor(
                const Color(0XFFE8ECF4),
              ),
            ),
            home: const WelcomeScreen(),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_inscription_connexion/constants.dart';
import 'package:flutter_inscription_connexion/Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Inscription et Connexion",
      theme: ThemeData(
        primaryColor: PrimaryColor,
        scaffoldBackgroundColor: Colors.transparent,
      ),
      home: WelcomScreen(),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_inscription_connexion/components/background.dart';
import 'package:flutter_inscription_connexion/components/rounded_input.dart';
import 'package:flutter_inscription_connexion/components/rounded_password.dart';
import 'package:flutter_inscription_connexion/components/rounded_login.dart';
import 'package:flutter_inscription_connexion/components/already_have_an_account.dart';
import 'package:flutter_inscription_connexion/Screens/Signup/signup_screen.dart';
import 'package:flutter_inscription_connexion/Screens/FullJobs/fullJobs_screen.dart';
import 'package:flutter_inscription_connexion/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Taille en hauteur et Largeur de notre écran
    return Background(
      child: SingleChildScrollView(
        // Sert à rendre visible toute la page quelques soit l'écran
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.20),
            Image.asset(
              "assets/images/logo.png",
            ),
            Text(
              "Veuillez vous identifier,",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24),
            ),
            SizedBox(
                height:
                    size.height * 0.01), // Espacement du titre et des boutons
            RoundedInputField(
              hintText: "Votre email",
              onChanged: (value) {},
            ),
            RoundedPassword(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.01),
            Image.asset(
              "assets/images/footPrintt.png",
              height: 80,
            ),

            RoundedLogin(
              text: "Se connecter",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FullJobsScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.01),
            FlatButton(
              child: Text(
                "Mot de passe oublié ?",
                style: TextStyle(color: PrimaryColorBlue),
              ),
              onPressed: () {},
            ),
            SizedBox(height: size.height * 0.01),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignupScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

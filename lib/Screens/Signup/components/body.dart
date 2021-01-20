import 'package:flutter/material.dart';
import 'package:flutter_inscription_connexion/components/background.dart';
import 'package:flutter_inscription_connexion/components/rounded_input.dart';
import 'package:flutter_inscription_connexion/components/rounded_password.dart';
import 'package:flutter_inscription_connexion/components/rounded_login.dart';
import 'package:flutter_inscription_connexion/components/already_have_an_account.dart';
import 'package:flutter_inscription_connexion/Screens/Login/login_screen.dart';

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
            SizedBox(height: size.height * 0.18),
            Image.asset(
              "assets/images/logo.png",
            ),
            Text(
              "Veuillez vous inscrire,",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
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
            RoundedInputField(
              hintText: "Votre identifiant résident",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.01),
            RoundedLogin(
              text: "S'inscrire",
              color: Colors.red, //A MODIFIER
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
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

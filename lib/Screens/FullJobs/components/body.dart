import 'package:flutter/material.dart';

import 'package:flutter_inscription_connexion/components/background.dart';
import 'package:flutter_inscription_connexion/components/rounded_fullJobs.dart';
import 'package:flutter_inscription_connexion/Screens/GaleryResidents/galery_residents_screen.dart';

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
            SizedBox(height: size.height * 0.05),
            RoundedFullJobs(
              text: "Direction",
              press: () {},
            ),
            RoundedFullJobs(
              text: "Secrétaire",
              press: () {},
            ),
            RoundedFullJobs(
              text: "Médecin",
              press: () {},
            ),
            RoundedFullJobs(
              text: "Infirmière",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return GaleryResidentsScreen();
                    },
                  ),
                );
              },
            ),
            RoundedFullJobs(
              text: "Aide soignante",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return GaleryResidentsScreen();
                    },
                  ),
                );
              },
            ),
            RoundedFullJobs(
              text: "Animateur",
              press: () {},
            ),
            RoundedFullJobs(
              text: "T.D.S",
              press: () {},
            ),
            RoundedFullJobs(
              text: "Maintenance",
              press: () {},
            ),
            RoundedFullJobs(
              text: "Cuisine",
              press: () {},
            ),
            RoundedFullJobs(
              text: "Amp",
              press: () {},
            ),
            RoundedFullJobs(
              text: "Educateur spé",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

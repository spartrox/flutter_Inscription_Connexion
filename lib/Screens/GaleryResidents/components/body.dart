import 'package:flutter/material.dart';

import 'package:flutter_inscription_connexion/Screens/GaleryResidents/components/details_page.dart';

//-------------------------- LISTE DETAILS PHOTOS ---------------------------------
List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'assets/images/employe_01.png',
    title: 'EHPAD',
    details: 'Aide Soignant .',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_02.png',
    title: 'EHPAD',
    details: ' Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_03.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_04.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_05.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_06.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_07.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_08.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_09.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_10.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_11.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_12.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_13.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_14.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
  ImageDetails(
    imagePath: 'assets/images/employe_15.png',
    title: 'EHPAD',
    details: 'Aide Soignant.',
  ),
];

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //-------------------------- EN TETE PAGE-------------------------------------
        appBar: AppBar(
            title: new Center(
              child: new Text("TRANSMISSION"),
            ),
            leading: new Icon(Icons.settings),
            actions: <Widget>[
              Icon(Icons.account_circle),
              Icon(Icons.camera_alt_rounded),
            ]),
        backgroundColor: Colors.blue,
        //-------------------------- BODY APPLI-------------------------------------
        body: new Container(
          //color: Colors.blue,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 30,
            ),
            itemBuilder: (context, index) {
              return RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPage(
                              title: "",
                              imagePath: _images[index].imagePath,
                              details: "",
                            )),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(_images[index].imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            itemCount: _images.length,
          ),
        ),

        //---------------------------- PIED DE PAGE-----------------------------
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.indigo,
          items: [
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text("Calendrier", style: TextStyle(color: Colors.white)),
              icon: Icon(Icons.calendar_today, color: Colors.white),
            ),
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text("Accueil", style: TextStyle(color: Colors.white)),
              icon: Icon(Icons.home, color: Colors.white),
            ),
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text("Contact", style: TextStyle(color: Colors.white)),
              icon: Icon(Icons.phone, color: Colors.white),
            )
          ],
        ),
        //---------------------------- BAS PIED DE PAGE--------------------------
      ),
    );
  }
}

//---------------------------- CLASSE-OBJET--------------------------
class ImageDetails {
  final String imagePath;
  final String title;
  final String details;
  //Constructeur
  ImageDetails(
      {@required this.imagePath, @required this.details, @required this.title});
}

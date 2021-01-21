import 'package:flutter/material.dart';

import 'package:flutter_inscription_connexion/components/plan.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String details;

  DetailsPage(
      {@required this.imagePath, @required this.details, @required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: new Center(
          child: Text(
            'Informations sur le résident',
          ),
        )),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                height: 260,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            details,
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Plan()),
                              );
                            },
                            padding: EdgeInsets.symmetric(vertical: 15),
                            color: Colors.lightBlueAccent,
                            child: Text(
                              'GÉOLOCALISATION DU RÉSIDENT',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
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
      ),
    );
  }
}

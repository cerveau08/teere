import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teere/citations/citation.dart';
import 'package:teere/histoires/lesHistoire.dart';
import 'package:teere/langues/listlangue.dart';
import 'package:teere/pays/pays.dart';
import 'package:teere/portraits/portrait.dart';
import 'package:teere/proverbes/proverbe.dart';
import 'package:teere/quiz.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.red,
        child: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
          ListTile(
            leading: FaIcon(FontAwesomeIcons.bars, color: Colors.white,),
            title: Text("Langues",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Langue()) 
              );
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.globeAfrica, color: Colors.white,),
            title: Text("Pays",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pays()) 
              );
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.userFriends, color: Colors.white,),
            title: Text("Portraits",
              style: TextStyle(
              color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Portrait()) 
              );
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.atlas, color: Colors.white,),
            title: Text("Histoire",
              style: TextStyle(
              color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Histoire()) 
              );
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.bookOpen, color: Colors.white,),
            title: Text("Citations",
              style: TextStyle(
              color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Citation()) 
              );
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.bolt, color: Colors.white,),
            title: Text("Proverbes",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Proverbe()) 
              );
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.streetView, color: Colors.white,),
            title: Text("Quizz",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Quiz()) 
              );
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.infoCircle, color: Colors.white,),
            title: Text("A propos de Teere",
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: ListTile(
                
                title: Text("SUIVEZ-NOUS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              )
            )
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.twitter, color: Colors.blueGrey,),
            title: Text("Twitter",
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.facebook, color: Colors.blue,),
            title: Text("Facebook",
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.googlePlus, color: Colors.red,),
            title: Text("Google+",
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.globeAmericas, color: Colors.white),
            title: Text("Site officiel",
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ),
        ]
        ).toList()
        )
      ),
    );
  }
}
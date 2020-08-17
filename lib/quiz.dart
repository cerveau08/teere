import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teere/appDrawer.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Image.asset('assets/images/icon.png',
            fit: BoxFit.contain,
            height: 34,
            ),
            Container(
              padding: const EdgeInsets.all(2.0),
              child: Text("Quiz"),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.ad)
          )
        ],
        
      ),
      drawer: AppDrawer(),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: Center(
                child: Text("Jouer",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.green,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Center(
                child: Text("Score",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
                textAlign: TextAlign.center,
              ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.3,
              color: Colors.white,
            ),
          ),
        ],
      )
    );
  }
}
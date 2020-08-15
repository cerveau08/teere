import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teere/home.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.red,
    accentColor: Colors.yellowAccent),
  debugShowCheckedModeBanner: false,
  home: SplashScreen()
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home()
          )
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white
            ),
          ),
          Positioned(
            top: 50,
            left: 5,
            child: Image.asset("assets/images/icon.png",
            fit: BoxFit.fitWidth
            ),
          ),
          Positioned(
            top: 
            50,
            left: 140,
            child: Column(
              children: <Widget>[
                Text(
                  "T",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 60,
                    fontWeight: FontWeight.bold
                  ),
                )
              ]
            ),
          ),
          Positioned(
            top: 
            50,
            left: 170,
            child: Column(
              children: <Widget>[
                Text(
                  "e",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 60,
                    fontWeight: FontWeight.bold
                  ),
                )
              ]
            ),
          ),
          Positioned(
            top: 
            50,
            left: 210,
            child: Column(
              children: <Widget>[
                Text(
                  "e",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 60,
                    fontWeight: FontWeight.bold
                  ),
                )
              ]
            ),
          ),
          Positioned(
            top: 
            50,
            left: 250,
            child: Column(
              children: <Widget>[
                Text(
                  "r",
                  style: TextStyle(
                    color: Colors.yellow[500],
                    fontSize: 60,
                    fontWeight: FontWeight.bold
                  ),
                )
              ]
            ),
          ),
          Positioned(
            top: 
            50,
            left: 280,
            child: Column(
              children: <Widget>[
                Text(
                  "e",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 60,
                    fontWeight: FontWeight.bold
                  ),
                )
              ]
            ),
          ),
          Positioned(
            top: 115,
            left: 155,
            child: Column(
              children: <Widget>[
                Text(
                  "Le meilleur moyen",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ]
            ),
          ),
          Positioned(
            top: 135,
            left: 155,
            child: Column(
              children: <Widget>[
                Text(
                  "de (faire) decouvrir",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ]
            ),
          ),
          Positioned(
            top: 165,
            left: 155,
            child: Column(
              children: <Widget>[
                Text(
                  "l'Afrique",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32
                  ),
                )
              ]
            ),
          ),
          Positioned(
            top: 350,
            left: 140,
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  radius: 20.0,      
                ),
              ]
            ),
          ),
          Positioned(
            top: 300,
            left: 110,
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 30.0,      
                ),
              ]
            ),
          ),
          
          Positioned(
            top: 320,
            left: 20,
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  radius: 70.0, 
                  child: Text(
                          "version 1.3",
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                        ),     
                ),
              ]
            ),
          ),
          Positioned(  
            top: 370,
            left: 250,
            child: Container(
              color: Colors.brown,
              height: 195,
              width: 50,
              alignment: Alignment(0.7, 0.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("gafe",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  Text("wema",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  Text("littalin",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text("adlis",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text("buku",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text("igitaba",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text("buku",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text("dettere",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text("buug",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text("kitabu",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text("teere",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text("ibhuku",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                ],
              ),
            )
          ,)
        ],
      )
    );
  }
}
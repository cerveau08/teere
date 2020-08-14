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
      Duration(seconds: 2),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 50.0,
                        child: Icon(
                          Icons.access_alarm,
                          color: Colors.greenAccent,
                          size: 50.0
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      Text(
                        "Teere",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                )
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20)
                    ),
                    Text(
                      "Teere Volkeno",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ],
                ),
              )
            ]
          )
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:teere/appDrawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Accueil"),
          
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text("Cerv"),
        )
    );
  }
}
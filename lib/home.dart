import 'package:flutter/material.dart';
import 'package:teere/appDrawer.dart';

class Home extends StatelessWidget {
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
              child: Text("Acceuil"),
            )
          ],
        ),
        
      ),
      drawer: AppDrawer(),
        body: Container(
          color: Colors.grey
        )
      
    );
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:teere/appDrawer.dart';

class Histoire extends StatefulWidget {
  @override
  _HistoireState createState() => _HistoireState();
}

class _HistoireState extends State<Histoire> {
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
              child: Text("Histoire"),
            )
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            )
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.more_vert
              ),
            )
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: _buildBody(context)
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('proverbes').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

          return _buildList(context, snapshot.data.documents);
      },
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final histoire = LesHistoires.fromSnapshot(data);
    print(histoire);
    return Padding(
      key: ValueKey(histoire.nom),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(histoire.nom),
          // trailing: Text(histoire.grammaire.toString()),
          onTap: () => print(histoire),
        ),
      ),
    );
  }
}

class LesHistoires {
  final String nom;
  //final String grammaire;
  final DocumentReference reference;

  LesHistoires.fromMap(Map<String, dynamic> map, {this.reference})
    : assert(map['nom'] != null),
     // assert(map['grammaire'] != null),
      nom = map['nom'];
     // grammaire = map['grammaire'];

  LesHistoires.fromSnapshot(DocumentSnapshot snapshot)
    : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "LesHistoires<$nom>";
}
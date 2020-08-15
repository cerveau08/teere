import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Divider(),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.inbox),
            title: Text("Langues"),
          ),
          Divider(),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.edit),
            title: Text("Pays")
          ),
          Divider(),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.archive),
            title: Text("Portraits")
          ),
          Divider(),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.paperPlane),
            title: Text("Histoire")
          ),
          Divider(),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.trash),
            title: Text("Citations")
          ),
          Divider(),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.trash),
            title: Text("Proverbes")
          ),
          Divider(),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.trash),
            title: Text("Quizz")
          ),
          Divider(),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.trash),
            title: Text("A propos de Teere")
          ),
          Divider(),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.cog),
                title: Text("Settings"),
              )
            )
          )
        ]
      ),
    );
  }
}
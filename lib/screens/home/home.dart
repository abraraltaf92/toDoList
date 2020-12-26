import 'package:flutter/material.dart';
import 'package:to_do_list/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('toDoList'),
        centerTitle: true,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async {
              await _auth.signOut();
            },
            icon: Icon(Icons.person),
            label: Text("log out"),
          ),
        ],
      ),
      body: Container(
        color: Colors.blue[200],
        alignment: Alignment.center,
        child: Text("Home"),
      ),
    );
  }
}

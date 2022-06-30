import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ListWithTile(),
  ));
}

class ListWithTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second List"),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              tileColor: Colors.blueAccent,
              subtitle: Text("Go to settings"),
              trailing: Icon(Icons.arrow_circle_down),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Copy"),
              leading: Icon(Icons.copy),
              tileColor: Colors.blueAccent,
              subtitle: Text("Copy the text"),
              trailing: Icon(Icons.arrow_circle_down),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Paste"),
              leading: Icon(Icons.paste),
              tileColor: Colors.blueAccent,
              subtitle: Text("Paste teh text"),
              trailing: Icon(Icons.arrow_circle_down),
            ),
          )
        ],
      ),
    );
  }
}
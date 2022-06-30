import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: ListViewWithcons(),
    ),
  );
}

class ListViewWithcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fisrt List"),
      ),
      body: ListView(
        children: [
          Card(
            child: Center(
              child: Text(
                "List of country",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(),
          ),
          Card(
            child: Text(
                "India"
            ),
          ),
          Card(
            child: Text(
                "pakistan"
            ),
          ),
          Card(
            child: Text(
                "Saudi Arabia"
            ),
          ),
          Card(
            child: Text(
                "china"
            ),
          ),
          Card(
            child: Text(
                "Canada"
            ),
          ),
          Card(child: Text(
              "Argentina"
          ),
          ),
          Card(
            child: Text(""
                "Brazil"
            ),
          ),
          Card(
            child: Text(
                "Newzealand"
            ),
          ),
          Card(
            child: Text(
                "France"
            ),
          ),
        ],
      ),
    );
  }
}

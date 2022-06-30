import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              color: Color(0xF1C41740)
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage("asset/image/emma.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}
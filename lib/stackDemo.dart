import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: StackDemo(),
  ));
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Demo"),
      ),
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned
            (
            top: 100,
            left: 100,
            child: Container(
              height: 200,
              width: 200,
              child: Text("Positioned child"),color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 200,
              width: 200,
              child: Text("Align child"),color: Colors.grey,
            ),
          ),
          Container(
            height: 200,
            width: 200,
            child: Text("normal child"),color: Colors.deepPurple,
          )
        ],
      ),
    );
  }
}
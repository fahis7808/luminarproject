import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminarproject/SecondPage.dart';

void main(){
  runApp(MaterialApp(home: FirstPages(),));
}

class FirstPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frist Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to"),
          onPressed: (){
            Navigator.pushNamed(context, 'Second');
          },
        ),
      ),
    );
  }
}
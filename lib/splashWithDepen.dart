import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: Colors.red
    ),
    home: Splash2(),
  ),
  );
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return SplashScreen(
     seconds: 5,
     navigateAfterSeconds: HomeScreen2(),
     image: Image.asset("asset/image/Chinawl.png"),
     loaderColor: Colors.black,
   );
  }
}

class HomeScreen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text(
          "Splash Screen"
        ),
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(child: Text("Welcome"),
      ),
    );
  }
}